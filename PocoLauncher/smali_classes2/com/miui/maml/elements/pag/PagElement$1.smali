.class Lcom/miui/maml/elements/pag/PagElement$1;
.super Ljava/lang/Object;
.source "PagElement.java"

# interfaces
.implements Lorg/libpag/PAGView$PAGViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/pag/PagElement;->load(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/pag/PagElement;


# direct methods
.method constructor <init>(Lcom/miui/maml/elements/pag/PagElement;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/miui/maml/elements/pag/PagElement$1;->this$0:Lcom/miui/maml/elements/pag/PagElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lorg/libpag/PAGView;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Lorg/libpag/PAGView;)V
    .locals 2

    .line 269
    iget-object p1, p0, Lcom/miui/maml/elements/pag/PagElement$1;->this$0:Lcom/miui/maml/elements/pag/PagElement;

    invoke-static {p1}, Lcom/miui/maml/elements/pag/PagElement;->access$000(Lcom/miui/maml/elements/pag/PagElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 270
    iget-object p1, p0, Lcom/miui/maml/elements/pag/PagElement$1;->this$0:Lcom/miui/maml/elements/pag/PagElement;

    invoke-static {p1}, Lcom/miui/maml/elements/pag/PagElement;->access$000(Lcom/miui/maml/elements/pag/PagElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 272
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/pag/PagElement$1;->this$0:Lcom/miui/maml/elements/pag/PagElement;

    const-string p1, "complete"

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationRepeat(Lorg/libpag/PAGView;)V
    .locals 2

    .line 282
    iget-object p1, p0, Lcom/miui/maml/elements/pag/PagElement$1;->this$0:Lcom/miui/maml/elements/pag/PagElement;

    invoke-static {p1}, Lcom/miui/maml/elements/pag/PagElement;->access$000(Lcom/miui/maml/elements/pag/PagElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 283
    iget-object p1, p0, Lcom/miui/maml/elements/pag/PagElement$1;->this$0:Lcom/miui/maml/elements/pag/PagElement;

    invoke-static {p1}, Lcom/miui/maml/elements/pag/PagElement;->access$000(Lcom/miui/maml/elements/pag/PagElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 285
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/pag/PagElement$1;->this$0:Lcom/miui/maml/elements/pag/PagElement;

    const-string p1, "loopComplete"

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Lorg/libpag/PAGView;)V
    .locals 0

    return-void
.end method

.method public onAnimationUpdate(Lorg/libpag/PAGView;)V
    .locals 3

    .line 290
    iget-object v0, p0, Lcom/miui/maml/elements/pag/PagElement$1;->this$0:Lcom/miui/maml/elements/pag/PagElement;

    invoke-static {v0}, Lcom/miui/maml/elements/pag/PagElement;->access$000(Lcom/miui/maml/elements/pag/PagElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/miui/maml/elements/pag/PagElement$1;->this$0:Lcom/miui/maml/elements/pag/PagElement;

    invoke-static {v0}, Lcom/miui/maml/elements/pag/PagElement;->access$000(Lcom/miui/maml/elements/pag/PagElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object v0

    invoke-virtual {p1}, Lorg/libpag/PAGView;->getProgress()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 293
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/pag/PagElement$1;->this$0:Lcom/miui/maml/elements/pag/PagElement;

    const-string p1, "update"

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    return-void
.end method
