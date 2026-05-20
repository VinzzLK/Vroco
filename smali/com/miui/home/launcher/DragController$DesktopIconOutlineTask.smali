.class Lcom/miui/home/launcher/DragController$DesktopIconOutlineTask;
.super Lcom/miui/home/launcher/DragController$OutlineTask;
.source "DragController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/DragController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DesktopIconOutlineTask"
.end annotation


# direct methods
.method constructor <init>(Landroid/view/View;F)V
    .locals 1

    .line 837
    sget-object v0, Lcom/miui/home/launcher/DragController$OutlineTask;->sMainThreadExecutor:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/home/launcher/DragController$OutlineTask;-><init>(Ljava/util/concurrent/Executor;Landroid/view/View;F)V

    return-void
.end method


# virtual methods
.method getOutline()Landroid/graphics/Bitmap;
    .locals 1

    .line 842
    iget-object v0, p0, Lcom/miui/home/launcher/DragController$OutlineTask;->view:Landroid/view/View;

    iget p0, p0, Lcom/miui/home/launcher/DragController$OutlineTask;->scale:F

    invoke-static {v0, p0}, Lcom/miui/home/launcher/DragController;->createOutline(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method getOutlineBg()Landroid/graphics/Bitmap;
    .locals 1

    .line 847
    iget-object v0, p0, Lcom/miui/home/launcher/DragController$OutlineTask;->view:Landroid/view/View;

    iget p0, p0, Lcom/miui/home/launcher/DragController$OutlineTask;->scale:F

    invoke-static {v0, p0}, Lcom/miui/home/launcher/DragController;->createOutline(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
