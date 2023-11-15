.class public interface abstract annotation Ljavax/mail/MailSessionDefinition;
.super Ljava/lang/Object;
.source "MailSessionDefinition.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Ljavax/mail/MailSessionDefinition;
        description = ""
        from = ""
        host = ""
        password = ""
        properties = {}
        storeProtocol = ""
        transportProtocol = ""
        user = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Repeatable;
    value = Ljavax/mail/MailSessionDefinitions;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract description()Ljava/lang/String;
.end method

.method public abstract from()Ljava/lang/String;
.end method

.method public abstract host()Ljava/lang/String;
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract password()Ljava/lang/String;
.end method

.method public abstract properties()[Ljava/lang/String;
.end method

.method public abstract storeProtocol()Ljava/lang/String;
.end method

.method public abstract transportProtocol()Ljava/lang/String;
.end method

.method public abstract user()Ljava/lang/String;
.end method
