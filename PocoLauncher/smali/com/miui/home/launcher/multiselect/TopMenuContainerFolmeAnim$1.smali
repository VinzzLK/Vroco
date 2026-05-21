.class Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "TopMenuContainerFolmeAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->createAnimConfig(Lcom/miui/home/launcher/multiselect/TopMenuState;)Lmiuix/animation/base/AnimConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    .line 90
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;

    iget-object v0, v0, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->mTopMenuContainer:Lcom/miui/home/launcher/multiselect/TopMenuContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->isGoneState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;

    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->mTopMenuContainer:Lcom/miui/home/launcher/multiselect/TopMenuContainer;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->folmeComplete(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 78
    sget-object p1, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findBy(Ljava/util/Collection;Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p1

    iget-object p2, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;

    invoke-static {p2}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->access$000(Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;)F

    move-result p2

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;

    invoke-static {p2}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->access$100(Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;)F

    move-result p2

    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;

    invoke-static {v0}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->access$000(Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;)F

    move-result v0

    sub-float/2addr p2, v0

    div-float v1, p1, p2

    .line 83
    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;

    iget-object v0, p1, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->mTopMenuContainer:Lcom/miui/home/launcher/multiselect/TopMenuContainer;

    iget p2, p1, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->mImageViewAnimStartColor:I

    .line 84
    invoke-static {p1, p2}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->access$200(Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;I)I

    move-result v2

    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;

    iget p2, p1, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->mImageViewAnimEndColor:I

    invoke-static {p1, p2}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->access$200(Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;I)I

    move-result v3

    iget-object p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;

    iget p2, p1, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->mTextViewAnimStartColor:I

    .line 85
    invoke-static {p1, p2}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->access$200(Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;I)I

    move-result v4

    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim$1;->this$0:Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;

    iget p1, p0, Lcom/miui/home/launcher/multiselect/TopMenuContainerAnim;->mTextViewAnimEndColor:I

    invoke-static {p0, p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;->access$200(Lcom/miui/home/launcher/multiselect/TopMenuContainerFolmeAnim;I)I

    move-result v5

    .line 83
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->updateImageAndTextColor(FIIII)V

    return-void
.end method
