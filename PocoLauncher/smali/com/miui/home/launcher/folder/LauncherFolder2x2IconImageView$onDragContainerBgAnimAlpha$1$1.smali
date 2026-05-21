.class public final Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView$onDragContainerBgAnimAlpha$1$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "LauncherFolder2x2IconImageView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->onDragContainerBgAnimAlpha(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLauncherFolder2x2IconImageView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LauncherFolder2x2IconImageView.kt\ncom/miui/home/launcher/folder/LauncherFolder2x2IconImageView$onDragContainerBgAnimAlpha$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,217:1\n1#2:218\n*E\n"
.end annotation


# instance fields
.field final synthetic $needResetDrawable:Z

.field final synthetic this$0:Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;


# direct methods
.method constructor <init>(ZLcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView$onDragContainerBgAnimAlpha$1$1;->$needResetDrawable:Z

    iput-object p2, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView$onDragContainerBgAnimAlpha$1$1;->this$0:Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;

    .line 151
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 153
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 154
    iget-boolean p1, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView$onDragContainerBgAnimAlpha$1$1;->$needResetDrawable:Z

    if-eqz p1, :cond_0

    .line 155
    iget-object p0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView$onDragContainerBgAnimAlpha$1$1;->this$0:Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;

    invoke-static {p0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->access$resetDrawableToNormalState(Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;)V

    :cond_0
    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    const-string p1, "animAlpha"

    .line 163
    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 164
    iget-object p0, p0, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView$onDragContainerBgAnimAlpha$1$1;->this$0:Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;

    .line 165
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p1

    const/4 p2, 0x0

    .line 166
    invoke-static {p2}, Lcom/miui/home/launcher/common/BlurUtilities;->isFolderBlurSupported(Z)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 167
    invoke-static {p0}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->access$getMPreDrawable$p(Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2, p1}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->setDrawableAlpha(Landroid/graphics/drawable/Drawable;F)V

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/LauncherFolder2x2IconImageView;->setAnimAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method
