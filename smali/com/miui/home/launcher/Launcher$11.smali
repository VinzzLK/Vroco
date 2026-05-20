.class Lcom/miui/home/launcher/Launcher$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->setupAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 2939
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$11;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 2942
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$11;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$2300(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/DefaultScreenPreviewView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 2943
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$11;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$2300(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/DefaultScreenPreviewView;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 2944
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$11;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$2400(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2945
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$11;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$2500(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/EditingEntryThumbnailView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2946
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$11;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$2300(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/DefaultScreenPreviewView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2947
    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$11;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->access$2300(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/DefaultScreenPreviewView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/DefaultScreenPreviewView;->onShow(Z)V

    return-void
.end method
