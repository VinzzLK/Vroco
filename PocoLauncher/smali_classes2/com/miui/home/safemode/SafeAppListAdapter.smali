.class public Lcom/miui/home/safemode/SafeAppListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SafeAppListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/safemode/SafeAppListAdapter$IconClick;,
        Lcom/miui/home/safemode/SafeAppListAdapter$AppItem;,
        Lcom/miui/home/safemode/SafeAppListAdapter$AppHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mIconClickCallback:Lcom/miui/home/safemode/SafeAppListAdapter$IconClick;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/safemode/SafeAppListAdapter$AppItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/miui/home/safemode/SafeAppListAdapter$IconClick;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/safemode/SafeAppListAdapter;->mList:Ljava/util/List;

    .line 26
    iput-object p2, p0, Lcom/miui/home/safemode/SafeAppListAdapter;->mIconClickCallback:Lcom/miui/home/safemode/SafeAppListAdapter$IconClick;

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/safemode/SafeAppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/safemode/SafeAppListAdapter;)Ljava/util/List;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/home/safemode/SafeAppListAdapter;->mList:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/miui/home/safemode/SafeAppListAdapter;->mList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 50
    check-cast p1, Lcom/miui/home/safemode/SafeAppListAdapter$AppHolder;

    iget-object p0, p0, Lcom/miui/home/safemode/SafeAppListAdapter;->mList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/safemode/SafeAppListAdapter$AppItem;

    invoke-virtual {p1, p0, p2}, Lcom/miui/home/safemode/SafeAppListAdapter$AppHolder;->bind(Lcom/miui/home/safemode/SafeAppListAdapter$AppItem;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 33
    iget-object p2, p0, Lcom/miui/home/safemode/SafeAppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/miui/home/safemode/R$layout;->item_apps_list_safe_launcher:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-static {}, Lcom/miui/home/safemode/DeviceInfo;->getAppItemWidth()I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 35
    new-instance p2, Lcom/miui/home/safemode/SafeAppListAdapter$AppHolder;

    iget-object v0, p0, Lcom/miui/home/safemode/SafeAppListAdapter;->mIconClickCallback:Lcom/miui/home/safemode/SafeAppListAdapter$IconClick;

    invoke-direct {p2, p0, p1, v0}, Lcom/miui/home/safemode/SafeAppListAdapter$AppHolder;-><init>(Lcom/miui/home/safemode/SafeAppListAdapter;Landroid/view/View;Lcom/miui/home/safemode/SafeAppListAdapter$IconClick;)V

    return-object p2
.end method

.method public updateData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/safemode/SafeAppListAdapter$AppItem;",
            ">;)V"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/miui/home/safemode/SafeAppListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 39
    iget-object v0, p0, Lcom/miui/home/safemode/SafeAppListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 40
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
