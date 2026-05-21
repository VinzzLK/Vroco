.class public Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ZeroMaskAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;,
        Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLightMode:Z

.field private final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;->mDataList:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 40
    iput-boolean p2, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;->mIsLightMode:Z

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;->mIsLightMode:Z

    return p0
.end method


# virtual methods
.method public clearDataList()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;->mDataList:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 58
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;->mDataList:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 28
    check-cast p1, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;->onBindViewHolder(Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$ViewHolder;I)V
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;->mDataList:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p0, p2}, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$ViewHolder;->onBindHolder(Ljava/lang/Object;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$ViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$ViewHolder<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0028

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 70
    new-instance p2, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$RecommendAppsViewHolder;-><init>(Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 28
    check-cast p1, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;->onFailedToRecycleView(Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$ViewHolder;)Z

    move-result p0

    return p0
.end method

.method public onFailedToRecycleView(Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$ViewHolder;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 28
    check-cast p1, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;->onViewRecycled(Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter$ViewHolder;)V
    .locals 0

    .line 80
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 45
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 49
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 50
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateLightMode(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/search/ZeroMaskAdapter;->mIsLightMode:Z

    .line 63
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
