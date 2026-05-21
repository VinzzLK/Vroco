.class public Lcom/miui/home/launcher/allapps/hideapps/HideAppSearchFragment;
.super Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;
.source "HideAppSearchFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateAdapter(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;)Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;
    .locals 2

    .line 17
    new-instance p1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGridAdapter;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/allapps/AllAppsSheet;->COLOR_MODE:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    const/16 v1, 0xff

    invoke-direct {p1, p0, p2, v0, v1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGridAdapter;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V

    const/4 p0, 0x1

    .line 19
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGridAdapter;->setDefaultCheckBoxShow(Z)V

    return-object p1
.end method

.method public setClickLister(Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->setIconClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->setIconLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
