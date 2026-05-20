.class public Lcom/miui/home/launcher/guide/DefaultLauncherGuide;
.super Lcom/miui/home/launcher/guide/StartUpGuide;
.source "DefaultLauncherGuide.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/guide/StartUpGuide;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object p1, p0, Lcom/miui/home/launcher/guide/DefaultLauncherGuide;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public dealWithStoragePermissionResult(Z)V
    .locals 0

    .line 62
    invoke-super {p0, p1}, Lcom/miui/home/launcher/guide/StartUpGuide;->dealWithStoragePermissionResult(Z)V

    .line 63
    iget-object p0, p0, Lcom/miui/home/launcher/guide/StartUpGuide;->mListener:Lcom/miui/home/launcher/guide/OnFinishStartUpGuideListener;

    invoke-interface {p0}, Lcom/miui/home/launcher/guide/OnFinishStartUpGuideListener;->finishGuiding()V

    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/miui/home/launcher/guide/DefaultLauncherGuide;->mView:Landroid/view/View;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    const v1, 0x7f0a03b2

    if-ne p1, v1, :cond_0

    .line 50
    iput-boolean v0, p0, Lcom/miui/home/launcher/guide/StartUpGuide;->mIsQuiteGuide:Z

    .line 51
    invoke-virtual {p0}, Lcom/miui/home/launcher/guide/StartUpGuide;->setFirstLaunch()V

    .line 52
    iget-object p0, p0, Lcom/miui/home/launcher/guide/DefaultLauncherGuide;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/home/launcher/util/PermissionUtils;->requestStoragePermissions(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const v1, 0x7f0a03b4

    if-ne p1, v1, :cond_1

    .line 54
    iput-boolean v0, p0, Lcom/miui/home/launcher/guide/StartUpGuide;->mIsQuiteGuide:Z

    .line 55
    invoke-virtual {p0}, Lcom/miui/home/launcher/guide/StartUpGuide;->setFirstLaunch()V

    .line 56
    iget-object p0, p0, Lcom/miui/home/launcher/guide/StartUpGuide;->mListener:Lcom/miui/home/launcher/guide/OnFinishStartUpGuideListener;

    invoke-interface {p0}, Lcom/miui/home/launcher/guide/OnFinishStartUpGuideListener;->finishGuiding()V

    :cond_1
    :goto_0
    return-void
.end method

.method public performFirstGuide()Z
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/miui/home/launcher/guide/DefaultLauncherGuide;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/guide/StartUpGuide;->needRequestStoragePermission(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public setupContentView()V
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/miui/home/launcher/guide/DefaultLauncherGuide;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0094

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/guide/DefaultLauncherGuide;->mView:Landroid/view/View;

    const v1, 0x7f0a03b2

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 30
    iget-object v1, p0, Lcom/miui/home/launcher/guide/DefaultLauncherGuide;->mView:Landroid/view/View;

    const v2, 0x7f0a03b4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 32
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
