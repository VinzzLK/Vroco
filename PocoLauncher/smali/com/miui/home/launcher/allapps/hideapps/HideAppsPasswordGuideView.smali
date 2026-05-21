.class public Lcom/miui/home/launcher/allapps/hideapps/HideAppsPasswordGuideView;
.super Landroid/widget/RelativeLayout;
.source "HideAppsPasswordGuideView.java"

# interfaces
.implements Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewController;


# instance fields
.field private mGuideMsg:Landroid/widget/TextView;

.field private mGuideTitle:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$r-D35-UzlQIgFmNPuQYpmwOd3Dc(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsPasswordGuideView;->lambda$onFinishInflate$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsPasswordGuideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private static synthetic lambda$onFinishInflate$0(Landroid/view/View;)V
    .locals 1

    .line 49
    invoke-static {}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->getInstance()Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppDialogManager;->onHideAppsSwitchClick(Z)V

    return-void
.end method


# virtual methods
.method public onEnter()V
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "visibility = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HideAppsPasswordGuide"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onExit()V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 42
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a00cc

    .line 43
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a01dc

    .line 45
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsPasswordGuideView;->mGuideTitle:Landroid/widget/TextView;

    const v1, 0x7f0a01db

    .line 46
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsPasswordGuideView;->mGuideMsg:Landroid/widget/TextView;

    .line 48
    sget-object p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsPasswordGuideView$$ExternalSyntheticLambda0;->INSTANCE:Lcom/miui/home/launcher/allapps/hideapps/HideAppsPasswordGuideView$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onShow()V
    .locals 0

    return-void
.end method

.method public shouldContainerHandleTouchEventBySelf()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public shouldContainerScroll(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updateColorForUiMode()V
    .locals 3

    .line 89
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsPasswordGuideView;->mGuideTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060056

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsPasswordGuideView;->mGuideMsg:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f060049

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsPasswordGuideView;->mGuideTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060055

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsPasswordGuideView;->mGuideMsg:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f060048

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method
