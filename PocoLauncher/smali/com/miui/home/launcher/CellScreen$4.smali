.class Lcom/miui/home/launcher/CellScreen$4;
.super Ljava/lang/Object;
.source "CellScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/CellScreen;->setEditMode(ZZILcom/miui/home/launcher/EditStateChangeReason;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/CellScreen;

.field final synthetic val$inLayoutPreview:Z

.field final synthetic val$isEditing:Z


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/CellScreen;ZZ)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/miui/home/launcher/CellScreen$4;->this$0:Lcom/miui/home/launcher/CellScreen;

    iput-boolean p2, p0, Lcom/miui/home/launcher/CellScreen$4;->val$isEditing:Z

    iput-boolean p3, p0, Lcom/miui/home/launcher/CellScreen$4;->val$inLayoutPreview:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/miui/home/launcher/CellScreen$4;->this$0:Lcom/miui/home/launcher/CellScreen;

    invoke-static {v0}, Lcom/miui/home/launcher/CellScreen;->access$200(Lcom/miui/home/launcher/CellScreen;)Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/home/launcher/CellScreen$4;->val$isEditing:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/home/launcher/CellScreen$4;->val$inLayoutPreview:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/CellLayout;->setChildEditMode(Z)V

    .line 368
    iget-object p0, p0, Lcom/miui/home/launcher/CellScreen$4;->this$0:Lcom/miui/home/launcher/CellScreen;

    invoke-virtual {p0}, Lcom/miui/home/launcher/CellScreen;->updateEditLayout()V

    return-void
.end method
