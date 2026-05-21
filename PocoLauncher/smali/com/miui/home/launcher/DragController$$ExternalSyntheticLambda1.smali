.class public final synthetic Lcom/miui/home/launcher/DragController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/miui/launcher/utils/BitmapRenderer$Renderer;


# instance fields
.field public final synthetic f$0:F

.field public final synthetic f$1:Landroid/graphics/drawable/Drawable;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(FLandroid/graphics/drawable/Drawable;IILandroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/home/launcher/DragController$$ExternalSyntheticLambda1;->f$0:F

    iput-object p2, p0, Lcom/miui/home/launcher/DragController$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/drawable/Drawable;

    iput p3, p0, Lcom/miui/home/launcher/DragController$$ExternalSyntheticLambda1;->f$2:I

    iput p4, p0, Lcom/miui/home/launcher/DragController$$ExternalSyntheticLambda1;->f$3:I

    iput-object p5, p0, Lcom/miui/home/launcher/DragController$$ExternalSyntheticLambda1;->f$4:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6

    iget v0, p0, Lcom/miui/home/launcher/DragController$$ExternalSyntheticLambda1;->f$0:F

    iget-object v1, p0, Lcom/miui/home/launcher/DragController$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/miui/home/launcher/DragController$$ExternalSyntheticLambda1;->f$2:I

    iget v3, p0, Lcom/miui/home/launcher/DragController$$ExternalSyntheticLambda1;->f$3:I

    iget-object v4, p0, Lcom/miui/home/launcher/DragController$$ExternalSyntheticLambda1;->f$4:Landroid/view/View;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/DragController;->$r8$lambda$umTWNUKTiWe_JSJ3EolTiH4075U(FLandroid/graphics/drawable/Drawable;IILandroid/view/View;Landroid/graphics/Canvas;)V

    return-void
.end method
