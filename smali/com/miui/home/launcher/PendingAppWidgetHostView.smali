.class public Lcom/miui/home/launcher/PendingAppWidgetHostView;
.super Lcom/miui/home/launcher/LauncherAppWidgetHostView;
.source "PendingAppWidgetHostView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mDefaultView:Landroid/view/View;

.field private mIcon:Landroid/widget/ImageView;

.field private mIsDownloading:Z

.field private mNeedDownloadMark:Landroid/widget/ImageView;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mWidgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;


# direct methods
.method public static synthetic $r8$lambda$o-i8v5oHg5cDOul-hDszEyxrseg(Lcom/miui/home/launcher/PendingAppWidgetHostView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/PendingAppWidgetHostView;->lambda$getDefaultView$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/Launcher;)V

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;->mIsDownloading:Z

    .line 37
    iput-object p3, p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;->mWidgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    const/4 p1, 0x0

    .line 38
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherAppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    return-void
.end method

.method private isDownloading()Z
    .locals 0

    .line 109
    iget-boolean p0, p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;->mIsDownloading:Z

    return p0
.end method

.method private synthetic lambda$getDefaultView$0()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;->mDefaultView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected getDefaultView()Landroid/view/View;
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;->mDefaultView:Landroid/view/View;

    if-nez v0, :cond_3

    .line 49
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0038

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;->mDefaultView:Landroid/view/View;

    const v1, 0x7f0a0209

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;->mIcon:Landroid/widget/ImageView;

    .line 51
    iget-object v0, p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;->mDefaultView:Landroid/view/View;

    const v1, 0x7f0a0148

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;->mNeedDownloadMark:Landroid/widget/ImageView;

    .line 52
    iget-object v0, p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;->mDefaultView:Landroid/view/View;

    const v1, 0x7f0a02e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;->mProgress:Landroid/widget/ProgressBar;

    .line 54
    new-instance v0, Lcom/miui/home/launcher/PendingAppWidgetHostView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/PendingAppWidgetHostView$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/PendingAppWidgetHostView;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/appwidget/AppWidgetHostView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 55
    iget-object v0, p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;->mWidgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;->mWidgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    iget-object v1, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->transitionBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 57
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;->mWidgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    iget-object v2, v2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->transitionBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_0
    if-nez v0, :cond_1

    .line 61
    :try_start_0
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;->mWidgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {v2}, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->getUniqueTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/util/BitmapUtil;->getSaveBitmapAbsPathByUniqueTag(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 63
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :catch_0
    :cond_1
    if-nez v0, :cond_2

    .line 70
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10d0000

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 71
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080661

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/appwidget/AppWidgetHostView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 72
    iget-object v1, p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;->mIcon:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 75
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    :cond_3
    iget-object p0, p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;->mDefaultView:Landroid/view/View;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 83
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "PendingAppWidgetHostView"

    if-nez p1, :cond_0

    :try_start_1
    const-string p0, "launcher is null"

    .line 85
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;->mWidgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    iget-object v1, v1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;->packageName:Ljava/lang/String;

    .line 89
    invoke-static {p1, v1}, Lcom/miui/home/launcher/common/Utilities;->getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;->mWidgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    iget v3, v3, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appVersion:I

    if-lt v2, v3, :cond_1

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app is newest, appName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;->mWidgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    iget-object p0, p0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/LauncherModel;->scheduleWidgetUpdateTask(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/PendingAppWidgetHostView;->isDownloading()Z

    move-result v1

    if-nez v1, :cond_2

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "install widget :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;->mWidgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    iget-object v2, v2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object p0, p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;->mWidgetInfo:Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/Launcher;->installWidget(Lcom/miui/home/launcher/LauncherAppWidgetInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 97
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic setIgnoreAnimationForOnce(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setIgnoreAnimationForOnce(Z)V

    return-void
.end method

.method public updateAppWidgetSize(Landroid/os/Bundle;IIII)V
    .locals 0

    return-void
.end method

.method public updateProgress(II)V
    .locals 3

    const/4 p2, 0x0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    .line 103
    :goto_0
    iput-boolean p1, p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;->mIsDownloading:Z

    .line 104
    iget-object v0, p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;->mNeedDownloadMark:Landroid/widget/ImageView;

    const/4 v1, 0x4

    if-eqz p1, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, p2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    iget-object p0, p0, Lcom/miui/home/launcher/PendingAppWidgetHostView;->mProgress:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move p2, v1

    :goto_2
    invoke-virtual {p0, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
