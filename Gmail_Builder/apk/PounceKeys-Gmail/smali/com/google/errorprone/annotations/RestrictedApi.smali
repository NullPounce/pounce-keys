.class public interface abstract annotation Lcom/google/errorprone/annotations/RestrictedApi;
.super Ljava/lang/Object;
.source "RestrictedApi.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/google/errorprone/annotations/RestrictedApi;
        allowedOnPath = ""
        allowlistAnnotations = {}
        allowlistWithWarningAnnotations = {}
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract allowedOnPath()Ljava/lang/String;
.end method

.method public abstract allowlistAnnotations()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract allowlistWithWarningAnnotations()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract explanation()Ljava/lang/String;
.end method

.method public abstract link()Ljava/lang/String;
.end method
