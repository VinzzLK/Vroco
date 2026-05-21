.class Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$2;
.super Ljava/lang/Object;
.source "SmallWindowStateHelperUseManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->updateSmallWindowStateAndPackageName(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

.field final synthetic val$action:I


# direct methods
.method constructor <init>(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;I)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$2;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    iput p2, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$2;->val$action:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "SmallWindowStateHelper"

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$2;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->access$302(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;Z)Z

    .line 104
    iget-object v1, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$2;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    .line 105
    invoke-static {v1}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->access$400(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;)I

    move-result v1

    invoke-static {v1}, Lmiui/app/MiuiFreeFormManager;->getAllFreeFormStackInfosOnDisplay(I)Ljava/util/List;

    move-result-object v1

    .line 106
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 107
    iget-object v4, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$2;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    invoke-static {v4, v3}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->access$500(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    iget-object v2, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$2;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->access$302(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;Z)Z

    .line 112
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSmallWindowState, mIsInSmallWindowState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$2;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    invoke-static {v3}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->access$300(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "updateSmallWindowPackageName, clear"

    .line 113
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v2, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$2;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    invoke-static {v2}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->access$600(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 115
    iget-object v2, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$2;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    invoke-static {v2}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->access$700(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 116
    iget-object v2, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$2;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    invoke-static {v2}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->access$800(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 117
    iget-object v2, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$2;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    invoke-static {v2}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->access$900(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 118
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 119
    iget-object v3, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$2;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    invoke-static {v3, v2}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->access$500(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 120
    iget-object v3, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$2;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    invoke-virtual {v3, v2}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->addAllSmallWindowInfoSet(Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V

    .line 121
    invoke-virtual {v2}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->isInFreeFormMode()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$2;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    invoke-static {v3, v2}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->access$1000(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 122
    iget-object v3, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$2;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    invoke-static {v3, v2}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->access$1100(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V

    .line 124
    :cond_3
    invoke-virtual {v2}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->isInMiniFreeFormMode()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$2;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    invoke-static {v3, v2}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->access$1000(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 125
    iget-object v3, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$2;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    invoke-static {v3, v2}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->access$1200(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V

    .line 127
    :cond_4
    iget-object v3, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$2;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    invoke-static {v3, v2}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->access$1000(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 128
    iget-object v3, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$2;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    invoke-static {v3, v2}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->access$1300(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V

    goto :goto_0

    .line 132
    :cond_5
    iget-object v1, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$2;->this$0:Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;

    iget p0, p0, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager$2;->val$action:I

    invoke-static {v1, p0}, Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;->access$1400(Lcom/miui/home/smallwindow/SmallWindowStateHelperUseManager;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v1, "updateSmallWindowStateAndPackageName error"

    .line 134
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
