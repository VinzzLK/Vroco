.class Lcom/miui/home/launcher/DragController$WidgetOutlineTask;
.super Lcom/miui/home/launcher/DragController$OutlineTask;
.source "DragController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/DragController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WidgetOutlineTask"
.end annotation


# instance fields
.field private final cachedOutline:Landroid/graphics/Bitmap;

.field private final cachedOutlineBg:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/view/View;F)V
    .locals 4

    .line 859
    sget-object v0, Lcom/miui/home/launcher/DragController$OutlineTask;->sMainThreadExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/home/launcher/DragController$OutlineTask;-><init>(Ljava/util/concurrent/Executor;Landroid/view/View;F)V

    .line 862
    instance-of v0, p1, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 863
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object v0

    .line 864
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/4 v3, 0x4

    .line 865
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move-object v0, v1

    .line 867
    :goto_0
    invoke-static {p1, p2}, Lcom/miui/home/launcher/DragController;->createOutline(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/DragController$WidgetOutlineTask;->cachedOutline:Landroid/graphics/Bitmap;

    .line 868
    invoke-static {p1, v1, p2}, Lcom/miui/home/launcher/DragController;->access$100(Landroid/view/View;Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/DragController$WidgetOutlineTask;->cachedOutlineBg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 870
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method getOutline()Landroid/graphics/Bitmap;
    .locals 0

    .line 876
    iget-object p0, p0, Lcom/miui/home/launcher/DragController$WidgetOutlineTask;->cachedOutline:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method getOutlineBg()Landroid/graphics/Bitmap;
    .locals 0

    .line 881
    iget-object p0, p0, Lcom/miui/home/launcher/DragController$WidgetOutlineTask;->cachedOutlineBg:Landroid/graphics/Bitmap;

    return-object p0
.end method
