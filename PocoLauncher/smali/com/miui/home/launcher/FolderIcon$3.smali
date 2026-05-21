.class Lcom/miui/home/launcher/FolderIcon$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/FolderIcon;->deleteSelf()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/FolderIcon;


# direct methods
.method public static synthetic $r8$lambda$jwY-0wNr4WeBfybWSVgXDF8pi50(Lcom/miui/home/launcher/FolderIcon$3;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/FolderIcon$3;->lambda$onAnimationEnd$0()V

    return-void
.end method

.method constructor <init>(Lcom/miui/home/launcher/FolderIcon;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon$3;->this$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0()V
    .locals 1

    .line 406
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon$3;->this$0:Lcom/miui/home/launcher/FolderIcon;

    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Launcher;->removeFolder(Lcom/miui/home/launcher/FolderIcon;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 406
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon$3;->this$0:Lcom/miui/home/launcher/FolderIcon;

    new-instance v0, Lcom/miui/home/launcher/FolderIcon$3$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/FolderIcon$3$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/FolderIcon$3;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ItemIcon;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
