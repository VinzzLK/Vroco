.class public Lcom/miui/home/launcher/common/JNIHelper;
.super Ljava/lang/Object;
.source "JNIHelper.java"


# static fields
.field private static sInstance:Lcom/miui/home/launcher/common/JNIHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "jniLibs"

    .line 10
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/home/launcher/common/JNIHelper;
    .locals 1

    .line 14
    sget-object v0, Lcom/miui/home/launcher/common/JNIHelper;->sInstance:Lcom/miui/home/launcher/common/JNIHelper;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/miui/home/launcher/common/JNIHelper;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/JNIHelper;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/JNIHelper;->sInstance:Lcom/miui/home/launcher/common/JNIHelper;

    .line 17
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/common/JNIHelper;->sInstance:Lcom/miui/home/launcher/common/JNIHelper;

    return-object v0
.end method


# virtual methods
.method public native processBitmap(Landroid/graphics/Bitmap;III)Z
.end method
