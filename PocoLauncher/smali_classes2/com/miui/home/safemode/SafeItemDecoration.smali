.class Lcom/miui/home/safemode/SafeItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SafeItemDecoration.java"


# instance fields
.field private final mColumnSpacing:I

.field private final mLineSpacing:I

.field private final mSpaceCount:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 18
    iput p1, p0, Lcom/miui/home/safemode/SafeItemDecoration;->mSpaceCount:I

    .line 19
    iput p2, p0, Lcom/miui/home/safemode/SafeItemDecoration;->mColumnSpacing:I

    .line 20
    iput p3, p0, Lcom/miui/home/safemode/SafeItemDecoration;->mLineSpacing:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 29
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 30
    iget p3, p0, Lcom/miui/home/safemode/SafeItemDecoration;->mSpaceCount:I

    rem-int p4, p2, p3

    .line 31
    div-int/2addr p2, p3

    .line 32
    iget v0, p0, Lcom/miui/home/safemode/SafeItemDecoration;->mColumnSpacing:I

    mul-int v1, p4, v0

    div-int/2addr v1, p3

    iput v1, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p4, p4, 0x1

    mul-int/2addr p4, v0

    .line 33
    div-int/2addr p4, p3

    sub-int/2addr v0, p4

    iput v0, p1, Landroid/graphics/Rect;->right:I

    if-lez p2, :cond_0

    .line 35
    iget p0, p0, Lcom/miui/home/safemode/SafeItemDecoration;->mLineSpacing:I

    iput p0, p1, Landroid/graphics/Rect;->top:I

    :cond_0
    return-void
.end method
