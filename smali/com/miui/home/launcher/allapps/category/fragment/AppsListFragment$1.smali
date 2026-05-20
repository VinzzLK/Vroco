.class Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "AppsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$1;->this$0:Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 3

    .line 114
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 p2, 0x1

    .line 115
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$1;->this$0:Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    iget-object p1, p1, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 117
    sget-object p1, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p1

    new-instance v0, Lcom/miui/home/recents/event/DrawerScrollEvent;

    new-instance v1, Lcom/miui/home/recents/event/DrawerScrollInfo;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$1;->this$0:Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    iget-object v2, v2, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$1;->this$0:Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result p0

    invoke-direct {v1, v2, p0, p2}, Lcom/miui/home/recents/event/DrawerScrollInfo;-><init>(IIZ)V

    invoke-direct {v0, v1}, Lcom/miui/home/recents/event/DrawerScrollEvent;-><init>(Lcom/miui/home/recents/event/DrawerScrollInfo;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    .line 104
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 106
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$1;->this$0:Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    iget-object p2, p2, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->isShown()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 107
    sget-object p2, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p2}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p2

    new-instance p3, Lcom/miui/home/recents/event/DrawerScrollEvent;

    new-instance v0, Lcom/miui/home/recents/event/DrawerScrollInfo;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$1;->this$0:Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    iget-object v1, v1, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment$1;->this$0:Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result p0

    const/4 v2, 0x1

    .line 108
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-direct {v0, v1, p0, p1}, Lcom/miui/home/recents/event/DrawerScrollInfo;-><init>(IIZ)V

    invoke-direct {p3, v0}, Lcom/miui/home/recents/event/DrawerScrollEvent;-><init>(Lcom/miui/home/recents/event/DrawerScrollInfo;)V

    .line 107
    invoke-virtual {p2, p3}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    :cond_0
    return-void
.end method
