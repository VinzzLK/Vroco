.class public Lcom/miui/home/launcher/widget/HideAppsContentSwitcher;
.super Landroid/widget/ViewSwitcher;
.source "HideAppsContentSwitcher.java"


# instance fields
.field private currentIndex:I

.field private mHideAppsContentView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;

.field private mHideAppsSelectView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public changeToView(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid index"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 49
    :cond_1
    :goto_0
    iget v0, p0, Lcom/miui/home/launcher/widget/HideAppsContentSwitcher;->currentIndex:I

    if-ne v0, p1, :cond_2

    return-void

    .line 52
    :cond_2
    iput p1, p0, Lcom/miui/home/launcher/widget/HideAppsContentSwitcher;->currentIndex:I

    .line 53
    invoke-virtual {p0, p1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    return-void
.end method

.method public initialize(Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;)V
    .locals 2

    .line 35
    iput-object p1, p0, Lcom/miui/home/launcher/widget/HideAppsContentSwitcher;->mHideAppsContentView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContentView;

    .line 36
    iput-object p2, p0, Lcom/miui/home/launcher/widget/HideAppsContentSwitcher;->mHideAppsSelectView:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSelectView;

    .line 38
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 39
    invoke-virtual {p0, p1, v1, v0}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 40
    invoke-virtual {p0, p2, p1, v0}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 42
    iput v1, p0, Lcom/miui/home/launcher/widget/HideAppsContentSwitcher;->currentIndex:I

    return-void
.end method

.method public reset()V
    .locals 1

    .line 57
    invoke-super {p0}, Landroid/widget/ViewSwitcher;->reset()V

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/miui/home/launcher/widget/HideAppsContentSwitcher;->currentIndex:I

    .line 59
    invoke-virtual {p0, v0}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    return-void
.end method
