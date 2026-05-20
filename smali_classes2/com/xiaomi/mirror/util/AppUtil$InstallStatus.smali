.class public interface abstract annotation Lcom/xiaomi/mirror/util/AppUtil$InstallStatus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/util/AppUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "InstallStatus"
.end annotation


# static fields
.field public static final INSTALLED:I = 0x1

.field public static final NOT_INSTALLED:I = 0x2

.field public static final NO_PERMISSION:I = 0x3

.field public static final UNKNOWN:I
