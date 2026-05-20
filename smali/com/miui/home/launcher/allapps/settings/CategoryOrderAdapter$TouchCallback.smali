.class Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$TouchCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "CategoryOrderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$TouchCallback;->this$0:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$1;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$TouchCallback;-><init>(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;)V

    return-void
.end method

.method private resetIconContentDescription(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 204
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 205
    check-cast p1, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;

    .line 206
    iget-object p0, p1, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 207
    iget-object p1, p1, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$ViewHolder;->title:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 209
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    const v2, 0x7f10001c

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setDragOverAnnounce(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 7

    if-eqz p1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$TouchCallback;->this$0:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->access$100(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 198
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const v2, 0x7f100077

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$TouchCallback;->this$0:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

    invoke-static {v6}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->access$100(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;)I

    move-result v6

    add-int/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-virtual {v0, v2, v4}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 199
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$TouchCallback;->this$0:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

    invoke-static {p0, v1}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->access$102(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;I)I

    :cond_0
    return-void
.end method


# virtual methods
.method public canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 216
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 185
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 186
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$TouchCallback;->setDragOverAnnounce(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 187
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 188
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$TouchCallback;->this$0:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->access$200(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;)Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->isCategoryOrderChanged()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 189
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/model/CategoryOrderUpdateTask;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$TouchCallback;->this$0:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

    .line 190
    invoke-static {v1}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->access$200(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;)Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->getOrderedCategoryList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/model/CategoryOrderUpdateTask;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    .line 192
    :cond_0
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$TouchCallback;->resetIconContentDescription(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 0

    .line 147
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p0

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-ne p0, p2, :cond_0

    const/4 p0, 0x3

    .line 148
    invoke-static {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p0

    return p0

    .line 150
    :cond_0
    invoke-static {p1, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p0

    return p0
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 156
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 157
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$TouchCallback;->this$0:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p3

    invoke-static {p2, p3}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->access$102(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;I)I

    .line 158
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$TouchCallback;->this$0:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

    invoke-static {p2}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->access$100(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;)I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 159
    :goto_0
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$TouchCallback;->this$0:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

    invoke-static {p2}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->access$100(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;)I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 160
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$TouchCallback;->this$0:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

    invoke-static {p2}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->access$200(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;)Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;

    move-result-object p2

    add-int/lit8 p3, p1, 0x1

    invoke-virtual {p2, p1, p3}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->swap(II)V

    move p1, p3

    goto :goto_0

    .line 163
    :cond_0
    :goto_1
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$TouchCallback;->this$0:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

    invoke-static {p2}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->access$100(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;)I

    move-result p2

    if-le p1, p2, :cond_1

    .line 164
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter$TouchCallback;->this$0:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

    invoke-static {p2}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->access$200(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;)Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;

    move-result-object p2

    add-int/lit8 p3, p1, -0x1

    invoke-virtual {p2, p1, p3}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->swap(II)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 172
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    if-eqz p1, :cond_0

    .line 174
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method
