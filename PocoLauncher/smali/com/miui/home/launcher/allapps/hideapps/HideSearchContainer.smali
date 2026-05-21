.class public Lcom/miui/home/launcher/allapps/hideapps/HideSearchContainer;
.super Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;
.source "HideSearchContainer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected getSearchAppId()I
    .locals 0

    const p0, 0x7f0a01e3

    return p0
.end method

.method protected getSearchCategoryId()I
    .locals 0

    const p0, 0x7f0a01e4

    return p0
.end method

.method public setClickForSearchItem(Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 27
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mAppFragment:Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;

    instance-of v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppSearchFragment;

    if-eqz v0, :cond_0

    .line 28
    check-cast p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppSearchFragment;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/hideapps/HideAppSearchFragment;->setClickLister(Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    :cond_0
    return-void
.end method
