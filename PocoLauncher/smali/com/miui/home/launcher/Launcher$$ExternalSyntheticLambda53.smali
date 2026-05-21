.class public final synthetic Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda53;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field public final synthetic f$1:Lcom/miui/home/launcher/IBackAnimView;

.field public final synthetic f$2:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/IBackAnimView;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda53;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda53;->f$1:Lcom/miui/home/launcher/IBackAnimView;

    iput-object p3, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda53;->f$2:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda53;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda53;->f$1:Lcom/miui/home/launcher/IBackAnimView;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda53;->f$2:Landroid/graphics/Rect;

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/Launcher;->$r8$lambda$tsPv-5ouxqcZETbL9to0weVKv-U(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/IBackAnimView;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
