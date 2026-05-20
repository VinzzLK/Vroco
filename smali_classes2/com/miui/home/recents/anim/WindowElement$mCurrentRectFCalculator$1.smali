.class public final Lcom/miui/home/recents/anim/WindowElement$mCurrentRectFCalculator$1;
.super Ljava/lang/Object;
.source "WindowElement.kt"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$ICurrentRectCalculator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/anim/WindowElement;-><init>(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/anim/WindowElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/recents/anim/WindowElement<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/home/recents/anim/WindowElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/recents/anim/WindowElement<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowElement$mCurrentRectFCalculator$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculate(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 7

    const-string v0, "rectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getENABLE_MUTI_WINDOWELEMENT()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 306
    :cond_0
    sget-object v0, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->Companion:Lcom/miui/home/recents/anim/ShortcutMenuLayerElement$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement$Companion;->getInstance()Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->getLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v1

    .line 307
    iget-object v2, p0, Lcom/miui/home/recents/anim/WindowElement$mCurrentRectFCalculator$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/WindowElement;->getMAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v2

    sget-object v3, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 308
    iget-object v2, p0, Lcom/miui/home/recents/anim/WindowElement$mCurrentRectFCalculator$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/WindowElement;->getMFinishSurface()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 311
    :cond_2
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPivotX()F

    move-result v2

    .line 312
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPivotY()F

    move-result v1

    .line 313
    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement$Companion;->getInstance()Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->getCurrentScale()F

    move-result v0

    .line 314
    iget v3, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v2

    mul-float/2addr v3, v0

    add-float/2addr v3, v2

    .line 315
    iget v4, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v1

    mul-float/2addr v4, v0

    add-float/2addr v4, v1

    .line 316
    iget v5, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v2

    mul-float/2addr v5, v0

    add-float/2addr v2, v5

    .line 317
    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v1

    mul-float/2addr v5, v0

    add-float/2addr v1, v5

    .line 319
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement$mCurrentRectFCalculator$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-static {p0}, Lcom/miui/home/recents/anim/WindowElement;->access$getTAG$p(Lcom/miui/home/recents/anim/WindowElement;)Ljava/lang/String;

    move-result-object p0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calculate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-virtual {p1, v3, v4, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_3
    :goto_1
    return-object p1
.end method
