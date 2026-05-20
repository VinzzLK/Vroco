.class Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhoneDialogAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WeakRefShowListener"
.end annotation


# instance fields
.field mEndTranslateY:I

.field mOnLayoutChange:Landroid/view/View$OnLayoutChangeListener;

.field mOnShow:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;",
            ">;"
        }
    .end annotation
.end field

.field mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;


# direct methods
.method constructor <init>(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;Landroid/view/View$OnLayoutChangeListener;Landroid/view/View;I)V
    .locals 0

    .line 261
    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 262
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mOnShow:Ljava/lang/ref/WeakReference;

    .line 263
    iput-object p3, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mOnLayoutChange:Landroid/view/View$OnLayoutChangeListener;

    .line 264
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mView:Ljava/lang/ref/WeakReference;

    .line 265
    iput p5, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mEndTranslateY:I

    return-void
.end method

.method private done()V
    .locals 3

    .line 328
    iget-object v0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 331
    iget-object v2, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mOnLayoutChange:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v2, :cond_0

    .line 332
    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 333
    iput-object v1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mOnLayoutChange:Landroid/view/View$OnLayoutChangeListener;

    .line 336
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mOnShow:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    if-eqz p0, :cond_1

    .line 338
    invoke-interface {p0}, Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;->onShowAnimComplete()V

    .line 340
    :cond_1
    invoke-static {}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$400()Ljava/lang/ref/WeakReference;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 341
    invoke-static {}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$400()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 342
    invoke-static {v1}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$402(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    :cond_2
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 316
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 317
    invoke-direct {p0}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->done()V

    .line 319
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    .line 321
    iget v0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mEndTranslateY:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$100(Landroid/view/View;IZ)V

    .line 323
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mOnShow:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 324
    iget-object p0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    .line 285
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 286
    invoke-direct {p0}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->done()V

    .line 287
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_2

    .line 290
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 292
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v1

    .line 293
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v2

    .line 294
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    if-eqz v1, :cond_0

    .line 296
    iget-object v3, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    iget v4, v2, Landroid/graphics/Insets;->bottom:I

    iget v5, v0, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$002(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;I)I

    goto :goto_0

    .line 298
    :cond_0
    iget-object v3, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$002(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;I)I

    .line 300
    :goto_0
    iget-object v3, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    invoke-static {v3}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$300(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 301
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAnimationEnd: isImeVisible = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mImeHeight = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    invoke-static {v1}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$000(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PhoneDialogAnim"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAnimationEnd: imeInsets = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationEnd: navigationBarInsets = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimationEnd: newValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mEndTranslateY:I

    iget-object v2, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    invoke-static {v2}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$000(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_1
    iget v0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mEndTranslateY:I

    iget-object v1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->this$0:Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    invoke-static {v1}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$000(Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;->access$100(Landroid/view/View;IZ)V

    .line 310
    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mOnShow:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 311
    iget-object p0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    .line 270
    iget-object p1, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    const-string p2, "show"

    .line 272
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 273
    iget-object p2, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mOnLayoutChange:Landroid/view/View$OnLayoutChangeListener;

    if-eqz p2, :cond_0

    .line 274
    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 277
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim$WeakRefShowListener;->mOnShow:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    if-eqz p0, :cond_1

    .line 279
    invoke-interface {p0}, Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;->onShowAnimStart()V

    :cond_1
    return-void
.end method
