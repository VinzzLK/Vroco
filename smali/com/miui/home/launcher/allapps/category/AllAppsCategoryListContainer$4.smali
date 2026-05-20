.class Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$4;
.super Ljava/lang/Object;
.source "AllAppsCategoryListContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$4;->this$0:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 383
    invoke-static {}, Lcom/miui/home/launcher/util/WorkProfileHelper;->isPreferWorkProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->setAppCategoryEnable(Z)V

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$4;->this$0:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->access$500(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)Ljava/util/ArrayList;

    move-result-object v0

    .line 387
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$4;->this$0:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    iget-object v1, v1, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->setCategoryList(Ljava/util/ArrayList;)V

    .line 388
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$4;->this$0:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->access$600(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)V

    .line 389
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$4;->this$0:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    iget-object v0, v0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 390
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$4;->this$0:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->access$700(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)V

    :cond_1
    return-void
.end method
