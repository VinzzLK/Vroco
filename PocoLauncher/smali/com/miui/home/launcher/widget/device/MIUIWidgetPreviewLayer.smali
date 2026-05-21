.class public Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;
.super Landroid/widget/FrameLayout;
.source "MIUIWidgetPreviewLayer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MIUIWidgetPreviewLayer"


# instance fields
.field private isPreparingWallPaper:Z

.field private mAttached:Z

.field private mBackground:Landroid/widget/ImageView;

.field private mPreparedWallPaper:Z

.field private mPreview:Landroid/widget/ImageView;

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$6YJfVOxy1zDw3Iqj-0CqzuOOxUM(Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;ZLjava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->lambda$attachWallpaper$1(ZLjava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VcJ2AsoPt-pHJpvc_IcJoE8A51E(Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->lambda$detach$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZpVFue_XF5xYJhzmoogppVtU4RE(Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->lambda$updatePreviewPosition$0(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rEJePDb-cfO1wIzm52ICaUC35iM(Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;ZLandroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->lambda$attachWallpaper$2(ZLandroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mTempRect:Landroid/graphics/Rect;

    .line 61
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mBackground:Landroid/widget/ImageView;

    .line 62
    sget-object p3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 63
    iget-object p2, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mBackground:Landroid/widget/ImageView;

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p3, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreview:Landroid/widget/ImageView;

    .line 66
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p1, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private attachWallpaper(ZZ)V
    .locals 1

    .line 217
    iget-boolean v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->isPreparingWallPaper:Z

    if-eqz v0, :cond_0

    const-string p0, "MIUIWidgetPreviewLayer"

    const-string p1, "attachWallpaper: return, preparing WallPaper."

    .line 218
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 221
    iput-boolean v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->isPreparingWallPaper:Z

    .line 222
    new-instance v0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;Z)V

    new-instance p2, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;Z)V

    const/4 p0, 0x0

    invoke-static {v0, p2, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method private createBitmapPath(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    .line 184
    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "editmode"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 187
    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "preview_layer_background_image.png"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " createConfigPath: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MIUIWidgetPreviewLayer"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private getBitmapFromLocal()Landroid/graphics/Bitmap;
    .locals 1

    .line 212
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    .line 213
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->createBitmapPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$attachWallpaper$1(ZLjava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 3

    .line 223
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getCurrentWallpaper()Landroid/graphics/Bitmap;

    move-result-object p2

    const-string v0, "MIUIWidgetPreviewLayer"

    if-nez p2, :cond_0

    const-string/jumbo p0, "wallpaper is null"

    .line 225
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 228
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x64

    invoke-static {v1, p2, v2}, Lcom/android/systemui/shared/recents/utilities/Graphics;->fastBlur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p1, :cond_1

    const-string p1, "attachWallpaper: will saveToLocal!"

    .line 230
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->saveBitmapToLocal(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    const-string p0, "attachWallpaper: not saveToLocal!"

    .line 232
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p2
.end method

.method private synthetic lambda$attachWallpaper$2(ZLandroid/graphics/Bitmap;)V
    .locals 2

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attachWallpaper: wallpaper is ready."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MIUIWidgetPreviewLayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 236
    iput-boolean v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->isPreparingWallPaper:Z

    const/4 v0, 0x1

    .line 237
    iput-boolean v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreparedWallPaper:Z

    .line 238
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "attachWallpaper: return, parent is null."

    .line 239
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 243
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->startAttachAnimation()V

    :cond_1
    if-nez p2, :cond_2

    .line 246
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f06014c

    invoke-static {p2, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    const-string p2, "attachWallpaper-a"

    .line 247
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->printBackgroundWHInfo(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const-string p1, "attachWallpaper-b"

    .line 250
    invoke-virtual {p0, p2, p1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->printBackgroundWHInfo(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$detach$3()V
    .locals 2

    .line 281
    iget-boolean v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mAttached:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "MIUIWidgetPreviewLayer"

    const-string v1, "attachWallpaper: detach \u7f6e\u7a7a\u4e86."

    .line 282
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mBackground:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 284
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updatePreviewPosition$0(Landroid/graphics/Rect;)V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 97
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreview:Landroid/widget/ImageView;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreview:Landroid/widget/ImageView;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 102
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreview:Landroid/widget/ImageView;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mTempRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p0

    int-to-float p0, p1

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void
.end method

.method private saveBitmapToLocal(Landroid/graphics/Bitmap;)V
    .locals 5

    const-string v0, "saveBitmapToLocal: fos.close err."

    const-string v1, "MIUIWidgetPreviewLayer"

    .line 193
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    const/4 v3, 0x0

    .line 196
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->createBitmapPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 197
    :try_start_1
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, p0, v2, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v3, v4

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v3, v4

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    :goto_0
    :try_start_3
    const-string p1, "saveBitmapToLocal: catch err."

    .line 199
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_0

    .line 203
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 205
    invoke-static {v1, v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    return-void

    :goto_2
    if-eqz v3, :cond_1

    .line 203
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 205
    invoke-static {v1, v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    :cond_1
    :goto_3
    throw p0
.end method

.method private startAttachAnimation()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 256
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    .line 257
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    const-string v1, "preview"

    .line 258
    invoke-interface {p0, v1}, Lmiuix/animation/IStateStyle;->setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    sget-object v3, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const/high16 v4, 0x3f800000    # 1.0f

    .line 259
    invoke-interface {p0, v3, v4}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;F)Lmiuix/animation/IStateStyle;

    move-result-object p0

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    new-instance v3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    const/4 v5, -0x2

    .line 261
    invoke-static {v5, v4}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    aput-object v3, v0, v2

    .line 260
    invoke-interface {p0, v1, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void

    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3eb33333    # 0.35f
    .end array-data
.end method


# virtual methods
.method public attach(Z)V
    .locals 4

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mAttached:Z

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 134
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "MIUIWidgetPreviewLayer"

    if-eqz v0, :cond_1

    const-string v0, "attachWallpaper: use drawable."

    .line 135
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->startAttachAnimation()V

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_0
    const/4 p1, 0x0

    const-string v0, "attach-a"

    .line 139
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->printBackgroundWHInfo(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void

    .line 142
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->getBitmapFromLocal()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v3, "attachWallpaper: use local bitmap."

    .line 144
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v2, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz p1, :cond_2

    .line 147
    invoke-direct {p0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->startAttachAnimation()V

    goto :goto_1

    .line 148
    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_1
    const-string p1, "attach-b"

    .line 149
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->printBackgroundWHInfo(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void

    .line 152
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attach: background state = ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->isPreparingWallPaper:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreparedWallPaper:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-boolean v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->isPreparingWallPaper:Z

    if-eqz v0, :cond_4

    const-string p0, "attach: preparing background..."

    .line 154
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const/4 v0, 0x0

    .line 157
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->attachWallpaper(ZZ)V

    return-void
.end method

.method public detach(Z)V
    .locals 6

    const/4 v0, 0x0

    .line 265
    iput-boolean v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mAttached:Z

    if-nez p1, :cond_1

    .line 267
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "MIUIWidgetPreviewLayer"

    const-string v0, "attachWallpaper: detach \u7f6e\u7a7a\u4e86."

    .line 268
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mBackground:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 270
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x1

    new-array v1, p1, [Landroid/view/View;

    aput-object p0, v1, v0

    .line 274
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    .line 275
    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    const-string v2, "preview"

    .line 276
    invoke-interface {v1, v2}, Lmiuix/animation/IStateStyle;->setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    sget-object v3, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const/4 v4, 0x0

    .line 277
    invoke-interface {v1, v3, v4}, Lmiuix/animation/IStateStyle;->add(Lmiuix/animation/property/FloatProperty;F)Lmiuix/animation/IStateStyle;

    move-result-object v1

    new-array p1, p1, [Lmiuix/animation/base/AnimConfig;

    new-instance v3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v4, -0x2

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    .line 279
    invoke-static {v4, v5}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    aput-object v3, p1, v0

    .line 278
    invoke-interface {v1, v2, p1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 280
    new-instance p1, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3e99999a    # 0.3f
    .end array-data
.end method

.method public drawPreview(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 72
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 73
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 74
    iget-object v1, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 2

    const-string v0, "MIUIWidgetPreviewLayer"

    const-string v1, "onWallpaperColorChanged: will attachWallpaper."

    .line 295
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 296
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->attachWallpaper(ZZ)V

    return-void
.end method

.method public prepareBackGround()V
    .locals 5

    .line 112
    iget-boolean v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->isPreparingWallPaper:Z

    const-string v1, ")"

    const-string v2, ", "

    const-string v3, "MIUIWidgetPreviewLayer"

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreparedWallPaper:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 117
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string p0, "prepareBackGround: \u5df2\u7ecf\u4e3a\u80cc\u666f\u8bbe\u7f6e\u4e86Drawable\uff0c\u4e0d\u9700\u8981\u7ee7\u7eed\u51c6\u5907\u58c1\u7eb8."

    .line 124
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 128
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->attachWallpaper(ZZ)V

    return-void

    .line 119
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "prepareBackGround: \u4e0d\u662f\u6298\u53e0\u5c4f\u6216\u8005\u5df2\u7ecf\u5728\u6298\u53e0\u5c4f\u5185\u90e8\u4e86: ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 113
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepareBackGround: \u5f53\u524d\u6b63\u5728\u51c6\u5907\u58c1\u7eb8\u6216\u8005\u5df2\u7ecf\u5904\u7406\u5b8c\u6210\u4e86: ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->isPreparingWallPaper:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreparedWallPaper:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public printBackgroundWHInfo(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 4

    const-string v0, "MIUIWidgetPreviewLayer"

    .line 162
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[printBackgroundWHInfo]-["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 163
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 164
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "{globleVisibleRect="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "}"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ")}"

    const-string v2, ","

    if-eqz p1, :cond_0

    .line 167
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", {bm.wh = ("

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 169
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 170
    iget-object v3, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1

    .line 171
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", {mBackground.getDrawable.wh = ("

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 176
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", {mBackground.wh = ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 177
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "printBackgroundWHInfo: try-catch!!!"

    .line 179
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 291
    iget-object p0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPreviewCorner(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 81
    iget-object p1, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreview:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 82
    iget-object p0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreview:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreview:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 85
    iget-object v0, p0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;->mPreview:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer$1;-><init>(Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;F)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :goto_0
    return-void
.end method

.method public updatePreviewPosition(Landroid/graphics/Rect;)V
    .locals 1

    .line 95
    new-instance v0, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/widget/device/MIUIWidgetPreviewLayer;Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
