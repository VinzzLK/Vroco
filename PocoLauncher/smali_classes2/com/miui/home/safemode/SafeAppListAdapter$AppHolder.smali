.class Lcom/miui/home/safemode/SafeAppListAdapter$AppHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SafeAppListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/safemode/SafeAppListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppHolder"
.end annotation


# instance fields
.field private final mIcon:Landroid/widget/ImageView;

.field private mPosition:I

.field private final mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/miui/home/safemode/SafeAppListAdapter;


# direct methods
.method public static synthetic $r8$lambda$Ym0eNn_2hJl7tomN-aFwElDkSvs(Lcom/miui/home/safemode/SafeAppListAdapter$AppHolder;Lcom/miui/home/safemode/SafeAppListAdapter$IconClick;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/safemode/SafeAppListAdapter$AppHolder;->lambda$new$0(Lcom/miui/home/safemode/SafeAppListAdapter$IconClick;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_pxlogJC80YHJS_LwV75TCrjaKQ(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lcom/miui/home/safemode/SafeAppListAdapter$AppHolder;->lambda$new$1(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/miui/home/safemode/SafeAppListAdapter;Landroid/view/View;Lcom/miui/home/safemode/SafeAppListAdapter$IconClick;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/miui/home/safemode/SafeAppListAdapter$AppHolder;->this$0:Lcom/miui/home/safemode/SafeAppListAdapter;

    .line 59
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 p1, -0x1

    .line 56
    iput p1, p0, Lcom/miui/home/safemode/SafeAppListAdapter$AppHolder;->mPosition:I

    .line 60
    sget p1, Lcom/miui/home/safemode/R$id;->title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/home/safemode/SafeAppListAdapter$AppHolder;->mTitle:Landroid/widget/TextView;

    .line 61
    sget p1, Lcom/miui/home/safemode/R$id;->icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/home/safemode/SafeAppListAdapter$AppHolder;->mIcon:Landroid/widget/ImageView;

    .line 62
    new-instance p1, Lcom/miui/home/safemode/SafeAppListAdapter$AppHolder$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p3}, Lcom/miui/home/safemode/SafeAppListAdapter$AppHolder$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/safemode/SafeAppListAdapter$AppHolder;Lcom/miui/home/safemode/SafeAppListAdapter$IconClick;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    sget-object p0, Lcom/miui/home/safemode/SafeAppListAdapter$AppHolder$$ExternalSyntheticLambda1;->INSTANCE:Lcom/miui/home/safemode/SafeAppListAdapter$AppHolder$$ExternalSyntheticLambda1;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/miui/home/safemode/SafeAppListAdapter$IconClick;Landroid/view/View;)V
    .locals 1

    .line 63
    iget p2, p0, Lcom/miui/home/safemode/SafeAppListAdapter$AppHolder;->mPosition:I

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/miui/home/safemode/SafeAppListAdapter$AppHolder;->this$0:Lcom/miui/home/safemode/SafeAppListAdapter;

    invoke-static {v0}, Lcom/miui/home/safemode/SafeAppListAdapter;->access$000(Lcom/miui/home/safemode/SafeAppListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 64
    iget-object p2, p0, Lcom/miui/home/safemode/SafeAppListAdapter$AppHolder;->this$0:Lcom/miui/home/safemode/SafeAppListAdapter;

    invoke-static {p2}, Lcom/miui/home/safemode/SafeAppListAdapter;->access$000(Lcom/miui/home/safemode/SafeAppListAdapter;)Ljava/util/List;

    move-result-object p2

    iget p0, p0, Lcom/miui/home/safemode/SafeAppListAdapter$AppHolder;->mPosition:I

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/safemode/SafeAppListAdapter$AppItem;

    invoke-interface {p1, p0}, Lcom/miui/home/safemode/SafeAppListAdapter$IconClick;->onClick(Lcom/miui/home/safemode/SafeAppListAdapter$AppItem;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$new$1(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public bind(Lcom/miui/home/safemode/SafeAppListAdapter$AppItem;I)V
    .locals 1

    .line 71
    iput p2, p0, Lcom/miui/home/safemode/SafeAppListAdapter$AppHolder;->mPosition:I

    .line 72
    iget-object p2, p0, Lcom/miui/home/safemode/SafeAppListAdapter$AppHolder;->mTitle:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/miui/home/safemode/SafeAppListAdapter$AppItem;->mName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object p2, p0, Lcom/miui/home/safemode/SafeAppListAdapter$AppHolder;->mTitle:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/miui/home/safemode/SafeAppListAdapter$AppItem;->mName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 74
    iget-object p0, p0, Lcom/miui/home/safemode/SafeAppListAdapter$AppHolder;->mIcon:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/miui/home/safemode/SafeAppListAdapter$AppItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
