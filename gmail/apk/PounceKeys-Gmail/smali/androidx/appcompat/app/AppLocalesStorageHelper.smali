.class Landroidx/appcompat/app/AppLocalesStorageHelper;
.super Ljava/lang/Object;
.source "AppLocalesStorageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/AppLocalesStorageHelper$SerialExecutor;,
        Landroidx/appcompat/app/AppLocalesStorageHelper$ThreadPerTaskExecutor;
    }
.end annotation


# static fields
.field static final APPLICATION_LOCALES_RECORD_FILE:Ljava/lang/String; = "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

.field static final APP_LOCALES_META_DATA_HOLDER_SERVICE_NAME:Ljava/lang/String; = "androidx.appcompat.app.AppLocalesMetadataHolderService"

.field static final LOCALE_RECORD_ATTRIBUTE_TAG:Ljava/lang/String; = "application_locales"

.field static final LOCALE_RECORD_FILE_TAG:Ljava/lang/String; = "locales"

.field static final TAG:Ljava/lang/String; = "AppLocalesStorageHelper"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static persistLocales(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locales"    # Ljava/lang/String;

    .line 120
    const-string v0, "locales"

    const-string v1, "AppLocalesStorageHelper"

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    if-eqz v2, :cond_0

    .line 121
    invoke-virtual {p0, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 122
    return-void

    .line 127
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 132
    .local v2, "fos":Ljava/io/FileOutputStream;
    nop

    .line 133
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 135
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const/4 v4, 0x0

    :try_start_1
    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 136
    const-string v5, "UTF-8"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 137
    invoke-interface {v3, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 138
    const-string v5, "application_locales"

    invoke-interface {v3, v4, v5, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 139
    invoke-interface {v3, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 140
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Storing App Locales : app-locales: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " persisted successfully."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    if-eqz v2, :cond_1

    .line 149
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Storing App Locales : Failed to persist app-locales: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 147
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_1

    .line 149
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 152
    :goto_0
    goto :goto_1

    .line 150
    :catch_1
    move-exception v0

    goto :goto_0

    .line 155
    :cond_1
    :goto_1
    return-void

    .line 147
    :goto_2
    if-eqz v2, :cond_2

    .line 149
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 152
    goto :goto_3

    .line 150
    :catch_2
    move-exception v1

    .line 154
    :cond_2
    :goto_3
    throw v0

    .line 128
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_3
    move-exception v0

    .line 129
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    const-string v2, "Storing App Locales : FileNotFoundException: Cannot open file %s for writing "

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void
.end method

.method static readLocales(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .line 63
    const-string v0, "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    const-string v1, "AppLocalesStorageHelper"

    const-string v2, ""

    .line 67
    .local v2, "appLocales":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 72
    .local v3, "fis":Ljava/io/FileInputStream;
    nop

    .line 74
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 75
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v5, "UTF-8"

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 77
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 78
    .local v5, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v7, v6

    .local v7, "type":I
    const/4 v8, 0x1

    if-eq v6, v8, :cond_4

    const/4 v6, 0x3

    if-ne v7, v6, :cond_1

    .line 79
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v5, :cond_4

    .line 80
    :cond_1
    if-eq v7, v6, :cond_0

    const/4 v6, 0x4

    if-ne v7, v6, :cond_2

    .line 81
    goto :goto_0

    .line 84
    :cond_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 85
    .local v6, "tagName":Ljava/lang/String;
    const-string v8, "locales"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 86
    const-string v8, "application_locales"

    const/4 v9, 0x0

    invoke-interface {v4, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v8

    .line 88
    goto :goto_1

    .line 90
    .end local v6    # "tagName":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 96
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "outerDepth":I
    .end local v7    # "type":I
    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    .line 98
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 101
    :goto_2
    goto :goto_4

    .line 99
    :catch_0
    move-exception v4

    goto :goto_2

    .line 96
    :catchall_0
    move-exception v0

    goto :goto_6

    .line 91
    :catch_1
    move-exception v4

    goto :goto_3

    :catch_2
    move-exception v4

    .line 92
    .local v4, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    const-string v5, "Reading app Locales : Unable to parse through file :androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 96
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_5

    .line 98
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 105
    :cond_5
    :goto_4
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reading app Locales : Locales read from file: androidx.appcompat.app.AppCompatDelegate.application_locales_record_file , appLocales: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 111
    :cond_6
    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 113
    :goto_5
    return-object v2

    .line 96
    :goto_6
    if-eqz v3, :cond_7

    .line 98
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 101
    goto :goto_7

    .line 99
    :catch_3
    move-exception v1

    .line 103
    :cond_7
    :goto_7
    throw v0

    .line 68
    .end local v3    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    .line 69
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    const-string v3, "Reading app Locales : Locales record file not found: androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-object v2
.end method

.method static syncLocalesToFramework(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 166
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    .line 167
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "androidx.appcompat.app.AppLocalesMetadataHolderService"

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 170
    .local v0, "app_locales_component":Landroid/content/ComponentName;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 175
    invoke-static {}, Landroidx/appcompat/app/AppCompatDelegate;->getApplicationLocales()Landroidx/core/os/LocaleListCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/os/LocaleListCompat;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    invoke-static {p0}, Landroidx/appcompat/app/AppLocalesStorageHelper;->readLocales(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "appLocales":Ljava/lang/String;
    const-string v3, "locale"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 186
    .local v3, "localeManager":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 187
    nop

    .line 189
    invoke-static {v1}, Landroidx/appcompat/app/AppCompatDelegate$Api24Impl;->localeListForLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v4

    .line 187
    invoke-static {v3, v4}, Landroidx/appcompat/app/AppCompatDelegate$Api33Impl;->localeManagerSetApplicationLocales(Ljava/lang/Object;Landroid/os/LocaleList;)V

    .line 198
    .end local v1    # "appLocales":Ljava/lang/String;
    .end local v3    # "localeManager":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 202
    .end local v0    # "app_locales_component":Landroid/content/ComponentName;
    :cond_1
    return-void
.end method
