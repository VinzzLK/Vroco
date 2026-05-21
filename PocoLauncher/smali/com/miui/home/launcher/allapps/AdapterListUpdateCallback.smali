.class public abstract Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;
.super Ljava/lang/Object;
.source "AdapterListUpdateCallback.java"

# interfaces
.implements Landroidx/recyclerview/widget/ListUpdateCallback;


# instance fields
.field private final mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private mNotifyDataSetChangeRunnable:Ljava/lang/Runnable;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public static synthetic $r8$lambda$-bXz9LKJzLDo1urmBxOU4GltmU8(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->lambda$runOnAnimatingDone$4(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UpS9mbwbb9YwAa8YfO4i_5Zg_IM(Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;IILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->lambda$onChanged$3(IILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y8TdhAh_WrXIaPdjRIXjoH5UCio(Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->lambda$onInserted$0(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$wbSvRdYhOzNfqBc5bMsJFYLRqFw(Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->lambda$onRemoved$1(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$yu7Pfk1U7MZCqfyF1-XRJ3aAm9M(Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->lambda$onMoved$2(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback$2;-><init>(Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;)V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mNotifyDataSetChangeRunnable:Ljava/lang/Runnable;

    .line 15
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method private isRecyclerViewSupport()Z
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$onChanged$3(IILjava/lang/Object;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 63
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->afterNotifyData()V

    return-void
.end method

.method private synthetic lambda$onInserted$0(II)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 30
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->afterNotifyData()V

    return-void
.end method

.method private synthetic lambda$onMoved$2(II)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 52
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->afterNotifyData()V

    return-void
.end method

.method private synthetic lambda$onRemoved$1(II)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 41
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->afterNotifyData()V

    return-void
.end method

.method private static synthetic lambda$runOnAnimatingDone$4(Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 110
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private notifyDataSetChanged()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 130
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mNotifyDataSetChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 131
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mNotifyDataSetChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private runOnLayoutDone(Ljava/lang/Runnable;)V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback$1;-><init>(Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected afterNotifyData()V
    .locals 0

    return-void
.end method

.method protected beforeNotifyData()V
    .locals 0

    return-void
.end method

.method protected abstract isAnimEnable()Z
.end method

.method public isCanSubmit()Z
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 125
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onChanged(IILjava/lang/Object;)V
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->isAnimEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->isRecyclerViewSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback$$ExternalSyntheticLambda4;-><init>(Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;IILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->runOnLayoutDone(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public onDetachedFromRecyclerView()V
    .locals 1

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onInserted(II)V
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->isAnimEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->isRecyclerViewSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;II)V

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->runOnLayoutDone(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 33
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public onMoved(II)V
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->isAnimEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->isRecyclerViewSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;II)V

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->runOnLayoutDone(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public onRemoved(II)V
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->isAnimEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->isRecyclerViewSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;II)V

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->runOnLayoutDone(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public runOnAnimatingDone(Ljava/lang/Runnable;)V
    .locals 1

    .line 105
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_1

    .line 106
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 108
    new-instance v0, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/allapps/AdapterListUpdateCallback$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 115
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method
