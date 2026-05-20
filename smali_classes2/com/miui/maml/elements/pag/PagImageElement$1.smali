.class Lcom/miui/maml/elements/pag/PagImageElement$1;
.super Ljava/lang/Object;
.source "PagImageElement.java"

# interfaces
.implements Lorg/libpag/PAGImageView$PAGImageViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/pag/PagImageElement;->load(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/pag/PagImageElement;


# direct methods
.method constructor <init>(Lcom/miui/maml/elements/pag/PagImageElement;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/miui/maml/elements/pag/PagImageElement$1;->this$0:Lcom/miui/maml/elements/pag/PagImageElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lorg/libpag/PAGImageView;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Lorg/libpag/PAGImageView;)V
    .locals 2

    .line 268
    iget-object p1, p0, Lcom/miui/maml/elements/pag/PagImageElement$1;->this$0:Lcom/miui/maml/elements/pag/PagImageElement;

    invoke-static {p1}, Lcom/miui/maml/elements/pag/PagImageElement;->access$000(Lcom/miui/maml/elements/pag/PagImageElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 269
    iget-object p1, p0, Lcom/miui/maml/elements/pag/PagImageElement$1;->this$0:Lcom/miui/maml/elements/pag/PagImageElement;

    invoke-static {p1}, Lcom/miui/maml/elements/pag/PagImageElement;->access$000(Lcom/miui/maml/elements/pag/PagImageElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 271
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/pag/PagImageElement$1;->this$0:Lcom/miui/maml/elements/pag/PagImageElement;

    const-string p1, "complete"

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationRepeat(Lorg/libpag/PAGImageView;)V
    .locals 2

    .line 281
    iget-object p1, p0, Lcom/miui/maml/elements/pag/PagImageElement$1;->this$0:Lcom/miui/maml/elements/pag/PagImageElement;

    invoke-static {p1}, Lcom/miui/maml/elements/pag/PagImageElement;->access$000(Lcom/miui/maml/elements/pag/PagImageElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 282
    iget-object p1, p0, Lcom/miui/maml/elements/pag/PagImageElement$1;->this$0:Lcom/miui/maml/elements/pag/PagImageElement;

    invoke-static {p1}, Lcom/miui/maml/elements/pag/PagImageElement;->access$000(Lcom/miui/maml/elements/pag/PagImageElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 284
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/pag/PagImageElement$1;->this$0:Lcom/miui/maml/elements/pag/PagImageElement;

    const-string p1, "loopComplete"

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Lorg/libpag/PAGImageView;)V
    .locals 0

    return-void
.end method

.method public onAnimationUpdate(Lorg/libpag/PAGImageView;)V
    .locals 2

    .line 289
    iget-object p1, p0, Lcom/miui/maml/elements/pag/PagImageElement$1;->this$0:Lcom/miui/maml/elements/pag/PagImageElement;

    invoke-static {p1}, Lcom/miui/maml/elements/pag/PagImageElement;->access$000(Lcom/miui/maml/elements/pag/PagImageElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/maml/elements/pag/PagImageElement$1;->this$0:Lcom/miui/maml/elements/pag/PagImageElement;

    invoke-static {p1}, Lcom/miui/maml/elements/pag/PagImageElement;->access$100(Lcom/miui/maml/elements/pag/PagImageElement;)Lorg/libpag/PAGFile;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 290
    iget-object p1, p0, Lcom/miui/maml/elements/pag/PagImageElement$1;->this$0:Lcom/miui/maml/elements/pag/PagImageElement;

    invoke-static {p1}, Lcom/miui/maml/elements/pag/PagImageElement;->access$000(Lcom/miui/maml/elements/pag/PagImageElement;)Lcom/miui/maml/data/IndexedVariable;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/maml/elements/pag/PagImageElement$1;->this$0:Lcom/miui/maml/elements/pag/PagImageElement;

    invoke-static {v0}, Lcom/miui/maml/elements/pag/PagImageElement;->access$100(Lcom/miui/maml/elements/pag/PagImageElement;)Lorg/libpag/PAGFile;

    move-result-object v0

    invoke-virtual {v0}, Lorg/libpag/PAGFile;->getProgress()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 292
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/pag/PagImageElement$1;->this$0:Lcom/miui/maml/elements/pag/PagImageElement;

    const-string p1, "update"

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    return-void
.end method
