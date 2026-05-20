.class public Lcom/miui/home/launcher/gadget/MaMlPendingHostView;
.super Lcom/miui/home/launcher/maml/MaMlHostView;
.source "MaMlPendingHostView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mDefaultView:Landroid/view/View;

.field private mIcon:Landroid/widget/ImageView;

.field private mIsDownloading:Z

.field private mNeedDownloadMark:Landroid/widget/ImageView;

.field private volatile mNeedLoadFromUri:Z

.field private mProgress:Landroid/widget/ProgressBar;


# direct methods
.method public static synthetic $r8$lambda$RqDOQ7TbMbLr2XxxlKyKr9oz67g(Lcom/miui/home/launcher/gadget/MaMlPendingHostView;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->lambda$getPreviewFromUri$1(Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_0MmWjXcyy661az41GcEmKvehP0(Lcom/miui/home/launcher/gadget/MaMlPendingHostView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->lambda$onAttachedToWindow$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$ptuV7H86HcjBm8BYD_GZSzC6aSY(Lcom/miui/home/launcher/gadget/MaMlPendingHostView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->getPreviewFromUri()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/maml/MaMlHostView;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 47
    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->mIsDownloading:Z

    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->mNeedLoadFromUri:Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/gadget/MaMlPendingHostView;Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->install(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    return-void
.end method

.method private getPreviewFromUri()V
    .locals 4

    .line 126
    iget-boolean v0, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->mNeedLoadFromUri:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->mNeedLoadFromUri:Z

    .line 130
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->getMaMlItemInfo()Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 135
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->previewUrlDark:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 136
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 137
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->previewUrlLight:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 138
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 145
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/miui/home/launcher/common/Utilities;->decodeSampledBitmapFromUri(Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "MaMlPendingHostView"

    const-string v3, "decode bitmap error: "

    .line 147
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-eqz v1, :cond_3

    .line 151
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 152
    new-instance v1, Lcom/miui/home/launcher/gadget/MaMlPendingHostView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/gadget/MaMlPendingHostView;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method private install(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V
    .locals 0

    .line 175
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 177
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->installMaMl(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    :cond_0
    return-void
.end method

.method private isCanAutoStartDownload()Z
    .locals 0

    .line 204
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/util/NetWorkUtils;->isNetWifi(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/widget/WidgetSettingHelper;->getInstance()Lcom/miui/home/launcher/widget/WidgetSettingHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/widget/WidgetSettingHelper;->isMamlDownloadNeverWarn()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$getPreviewFromUri$1(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic lambda$onAttachedToWindow$0()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->scheduleDownloadAction()V

    return-void
.end method

.method private scheduleDownloadAction()V
    .locals 2

    .line 208
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->getMaMlItemInfo()Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 209
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->getMaMlItemInfo()Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    move-result-object v0

    iget v0, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->addSource:I

    invoke-static {v0}, Lcom/miui/home/launcher/util/ItemInfoConfigurationUtil;->isShowDownloadWaringDialog(I)Z

    move-result v0

    .line 210
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->isCanAutoStartDownload()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    .line 214
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/widget/WidgetSettingHelper;->getInstance()Lcom/miui/home/launcher/widget/WidgetSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/widget/WidgetSettingHelper;->isMamlDownloadOnlyWifi()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    const v0, 0x7f1002c8

    goto :goto_0

    :cond_1
    const v0, 0x7f1002c9

    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 217
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 219
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->showMaMlDownloadWarnDialog()V

    goto :goto_2

    .line 212
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->getMaMlItemInfo()Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->install(Lcom/miui/home/launcher/maml/MaMlWidgetInfo;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private showMaMlDownloadWarnDialog()V
    .locals 4

    .line 189
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->getMaMlItemInfo()Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->getMaMlItemInfo()Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->mtzSizeInKb:J

    new-instance v3, Lcom/miui/home/launcher/gadget/MaMlPendingHostView$1;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView$1;-><init>(Lcom/miui/home/launcher/gadget/MaMlPendingHostView;)V

    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/launcher/gadget/MaMlUtil;->showDownloadMaMlWarningDialog(Landroid/content/Context;JLcom/miui/home/launcher/gadget/MaMlUtil$DownloadDialogCallback;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public disableCutRoundCorner()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected getDefaultView()Landroid/view/View;
    .locals 7

    .line 82
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->mDefaultView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 83
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0038

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->mDefaultView:Landroid/view/View;

    const v1, 0x7f0a0209

    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->mIcon:Landroid/widget/ImageView;

    .line 85
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->mDefaultView:Landroid/view/View;

    const v1, 0x7f0a02e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->mProgress:Landroid/widget/ProgressBar;

    .line 86
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->mDefaultView:Landroid/view/View;

    const v1, 0x7f0a0148

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->mNeedDownloadMark:Landroid/widget/ImageView;

    .line 88
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->mDefaultView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->getMaMlItemInfo()Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 92
    iget-object v3, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->transitionBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 93
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->transitionBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_0
    if-nez v1, :cond_1

    .line 97
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;->getUniqueTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/home/launcher/util/BitmapUtil;->getSaveBitmapAbsPathByUniqueTag(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 99
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    :catch_0
    :cond_1
    if-nez v1, :cond_3

    .line 105
    instance-of v1, p0, Lcom/miui/home/launcher/servicedeliver/ServiceDeliveryPendingHostView;

    if-eqz v1, :cond_2

    .line 106
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0802f9

    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x10d0000

    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 109
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080661

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 110
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->mIcon:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 113
    :cond_3
    iput-boolean v2, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->mNeedLoadFromUri:Z

    :goto_0
    if-eqz v0, :cond_4

    .line 115
    invoke-virtual {v0}, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 116
    iget-object v3, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->mDefaultView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1003d7

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 117
    invoke-virtual {v0}, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-virtual {v3, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 119
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    :cond_5
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->mDefaultView:Landroid/view/View;

    return-object p0
.end method

.method protected getMaMlItemInfo()Lcom/miui/home/launcher/maml/MaMlWidgetInfo;
    .locals 1

    .line 182
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->getItemInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/maml/MaMlWidgetInfo;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isLoaded()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 56
    invoke-super {p0}, Lcom/miui/home/launcher/maml/MaMlHostView;->onAttachedToWindow()V

    .line 57
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->mDefaultView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->getDefaultView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 59
    new-instance v0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/gadget/MaMlPendingHostView;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 159
    :try_start_0
    iget-boolean p1, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->mIsDownloading:Z

    if-nez p1, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->scheduleDownloadAction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 163
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 65
    invoke-super/range {p0 .. p5}, Lcom/miui/home/launcher/maml/MaMlHostView;->onLayout(ZIIII)V

    .line 66
    iget-boolean p1, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->mNeedLoadFromUri:Z

    if-eqz p1, :cond_0

    .line 67
    new-instance p1, Lcom/miui/home/launcher/gadget/MaMlPendingHostView$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/gadget/MaMlPendingHostView$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/gadget/MaMlPendingHostView;)V

    invoke-static {p1}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public updateProgress(II)V
    .locals 3

    const/4 p2, 0x0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    .line 169
    :goto_0
    iput-boolean p1, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->mIsDownloading:Z

    .line 170
    iget-object v0, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->mNeedDownloadMark:Landroid/widget/ImageView;

    const/4 v1, 0x4

    if-eqz p1, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, p2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/MaMlPendingHostView;->mProgress:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move p2, v1

    :goto_2
    invoke-virtual {p0, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
