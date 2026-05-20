.class Lcom/miui/home/launcher/GridCell$1;
.super Ljava/lang/Object;
.source "GridCell.java"

# interfaces
.implements Lcom/miui/home/launcher/animate/SpringAnimator$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/GridCell;->initAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/GridCell;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/GridCell;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/miui/home/launcher/GridCell$1;->this$0:Lcom/miui/home/launcher/GridCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(F)V
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 257
    iget-object v0, p0, Lcom/miui/home/launcher/GridCell$1;->this$0:Lcom/miui/home/launcher/GridCell;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/GridCell;->access$002(Lcom/miui/home/launcher/GridCell;I)I

    .line 258
    iget-object v0, p0, Lcom/miui/home/launcher/GridCell$1;->this$0:Lcom/miui/home/launcher/GridCell;

    invoke-static {v0}, Lcom/miui/home/launcher/GridCell;->access$100(Lcom/miui/home/launcher/GridCell;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    iget-object p0, p0, Lcom/miui/home/launcher/GridCell$1;->this$0:Lcom/miui/home/launcher/GridCell;

    invoke-static {p0}, Lcom/miui/home/launcher/GridCell;->access$100(Lcom/miui/home/launcher/GridCell;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method
