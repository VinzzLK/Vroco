.class public final Lcom/miui/home/recents/util/TaskViewClipParams;
.super Ljava/lang/Object;
.source "TaskViewClipParams.kt"


# instance fields
.field private final mClipPath:Landroid/graphics/Path;

.field private mClipRadius:I

.field private final mClippingRect:Landroid/graphics/RectF;

.field private mIsNeedClipTaskView:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/TaskViewClipParams;->mClippingRect:Landroid/graphics/RectF;

    .line 27
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/util/TaskViewClipParams;->mClipPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public final clipTaskView(Landroid/graphics/Canvas;)V
    .locals 5

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-boolean v0, p0, Lcom/miui/home/recents/util/TaskViewClipParams;->mIsNeedClipTaskView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/util/TaskViewClipParams;->mClippingRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/miui/home/recents/util/TaskViewClipParams;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 47
    iget-object v0, p0, Lcom/miui/home/recents/util/TaskViewClipParams;->mClipPath:Landroid/graphics/Path;

    .line 48
    iget-object v1, p0, Lcom/miui/home/recents/util/TaskViewClipParams;->mClippingRect:Landroid/graphics/RectF;

    .line 49
    iget v2, p0, Lcom/miui/home/recents/util/TaskViewClipParams;->mClipRadius:I

    int-to-float v3, v2

    int-to-float v2, v2

    .line 51
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 47
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 53
    iget-object p0, p0, Lcom/miui/home/recents/util/TaskViewClipParams;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_0
    return-void
.end method

.method public final resetClipParam()V
    .locals 2

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/miui/home/recents/util/TaskViewClipParams;->mIsNeedClipTaskView:Z

    .line 40
    iget-object v1, p0, Lcom/miui/home/recents/util/TaskViewClipParams;->mClippingRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->setEmpty()V

    .line 41
    iput v0, p0, Lcom/miui/home/recents/util/TaskViewClipParams;->mClipRadius:I

    return-void
.end method

.method public final updateClipParam(Landroid/graphics/RectF;IZ)V
    .locals 1

    const-string v0, "rectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/miui/home/recents/util/TaskViewClipParams;->mClippingRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 34
    iput p2, p0, Lcom/miui/home/recents/util/TaskViewClipParams;->mClipRadius:I

    .line 35
    iput-boolean p3, p0, Lcom/miui/home/recents/util/TaskViewClipParams;->mIsNeedClipTaskView:Z

    return-void
.end method
