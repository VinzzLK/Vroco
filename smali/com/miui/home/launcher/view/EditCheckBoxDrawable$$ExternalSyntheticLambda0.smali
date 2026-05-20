.class public final synthetic Lcom/miui/home/launcher/view/EditCheckBoxDrawable$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/graphics/Rect;

.field public final synthetic f$3:Landroid/graphics/Rect;

.field public final synthetic f$4:Landroid/graphics/drawable/LayerDrawable;


# direct methods
.method public synthetic constructor <init>(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/drawable/LayerDrawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/home/launcher/view/EditCheckBoxDrawable$$ExternalSyntheticLambda0;->f$0:I

    iput p2, p0, Lcom/miui/home/launcher/view/EditCheckBoxDrawable$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/miui/home/launcher/view/EditCheckBoxDrawable$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/miui/home/launcher/view/EditCheckBoxDrawable$$ExternalSyntheticLambda0;->f$3:Landroid/graphics/Rect;

    iput-object p5, p0, Lcom/miui/home/launcher/view/EditCheckBoxDrawable$$ExternalSyntheticLambda0;->f$4:Landroid/graphics/drawable/LayerDrawable;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget v0, p0, Lcom/miui/home/launcher/view/EditCheckBoxDrawable$$ExternalSyntheticLambda0;->f$0:I

    iget v1, p0, Lcom/miui/home/launcher/view/EditCheckBoxDrawable$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/miui/home/launcher/view/EditCheckBoxDrawable$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/miui/home/launcher/view/EditCheckBoxDrawable$$ExternalSyntheticLambda0;->f$3:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/miui/home/launcher/view/EditCheckBoxDrawable$$ExternalSyntheticLambda0;->f$4:Landroid/graphics/drawable/LayerDrawable;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/view/EditCheckBoxDrawable;->$r8$lambda$8k13W2qB2q4UzO60PTHzuFsHylg(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/drawable/LayerDrawable;Landroid/animation/ValueAnimator;)V

    return-void
.end method
