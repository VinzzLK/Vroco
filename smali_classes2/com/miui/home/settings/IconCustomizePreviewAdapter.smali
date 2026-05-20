.class public Lcom/miui/home/settings/IconCustomizePreviewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "IconCustomizePreviewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field mInNoWordMode:Z

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/settings/IconCustomizePreviewAdapter;->mList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/miui/home/settings/IconCustomizePreviewAdapter;->mList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 21
    check-cast p1, Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/settings/IconCustomizePreviewAdapter;->onBindViewHolder(Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;I)V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizePreviewAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/AppInfo;

    .line 51
    invoke-static {p1}, Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;->access$000(Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/home/launcher/ItemInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-static {p1}, Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;->access$000(Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-boolean p0, p0, Lcom/miui/home/settings/IconCustomizePreviewAdapter;->mInNoWordMode:Z

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    invoke-static {p1}, Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;->access$100(Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;)Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object p0

    invoke-virtual {p2}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p1}, Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;->access$000(Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    const v0, 0x7f1103c8

    const v2, 0x7f1103cb

    invoke-static {p0, p2, v0, v2}, Lcom/miui/home/launcher/common/Utilities;->adaptTitleStyleToWallpaper(Landroid/content/Context;Landroid/widget/TextView;II)V

    .line 55
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconTopPadding()I

    move-result p2

    invoke-virtual {p0, v1, p2, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 56
    invoke-static {p1}, Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;->access$100(Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;)Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/LauncherIconImageView;->setIconSize(II)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/settings/IconCustomizePreviewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;
    .locals 2

    .line 43
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0034

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 45
    new-instance p2, Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/miui/home/settings/IconCustomizePreviewAdapter$ViewHolder;-><init>(Lcom/miui/home/settings/IconCustomizePreviewAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setIconScale(F)V
    .locals 1

    .line 36
    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->setIconScale(F)V

    .line 37
    invoke-virtual {p0}, Lcom/miui/home/settings/IconCustomizePreviewAdapter;->getItemCount()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public setInNoWordMode(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/miui/home/settings/IconCustomizePreviewAdapter;->mInNoWordMode:Z

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizePreviewAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 31
    iget-object v0, p0, Lcom/miui/home/settings/IconCustomizePreviewAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 32
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
