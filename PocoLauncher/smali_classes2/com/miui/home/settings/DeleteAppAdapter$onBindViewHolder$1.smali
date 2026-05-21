.class public final Lcom/miui/home/settings/DeleteAppAdapter$onBindViewHolder$1;
.super Ljava/lang/Object;
.source "DeleteAppAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/settings/DeleteAppAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $appInfo:Lcom/miui/home/settings/DeleteAppInfo;

.field final synthetic $position:I

.field final synthetic this$0:Lcom/miui/home/settings/DeleteAppAdapter;


# direct methods
.method constructor <init>(Lcom/miui/home/settings/DeleteAppInfo;Lcom/miui/home/settings/DeleteAppAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/settings/DeleteAppAdapter$onBindViewHolder$1;->$appInfo:Lcom/miui/home/settings/DeleteAppInfo;

    iput-object p2, p0, Lcom/miui/home/settings/DeleteAppAdapter$onBindViewHolder$1;->this$0:Lcom/miui/home/settings/DeleteAppAdapter;

    iput p3, p0, Lcom/miui/home/settings/DeleteAppAdapter$onBindViewHolder$1;->$position:I

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 83
    iget-object p1, p0, Lcom/miui/home/settings/DeleteAppAdapter$onBindViewHolder$1;->$appInfo:Lcom/miui/home/settings/DeleteAppInfo;

    invoke-virtual {p1}, Lcom/miui/home/settings/DeleteAppInfo;->getStatus()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 85
    :try_start_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 86
    iget-object v0, p0, Lcom/miui/home/settings/DeleteAppAdapter$onBindViewHolder$1;->$appInfo:Lcom/miui/home/settings/DeleteAppInfo;

    invoke-virtual {v0}, Lcom/miui/home/settings/DeleteAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 87
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 89
    iget-object v0, p0, Lcom/miui/home/settings/DeleteAppAdapter$onBindViewHolder$1;->this$0:Lcom/miui/home/settings/DeleteAppAdapter;

    invoke-static {v0}, Lcom/miui/home/settings/DeleteAppAdapter;->access$getTAG$p(Lcom/miui/home/settings/DeleteAppAdapter;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/settings/DeleteAppAdapter$onBindViewHolder$1;->$appInfo:Lcom/miui/home/settings/DeleteAppInfo;

    invoke-virtual {p0}, Lcom/miui/home/settings/DeleteAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "failed, e:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/miui/home/settings/DeleteAppAdapter$onBindViewHolder$1;->$appInfo:Lcom/miui/home/settings/DeleteAppInfo;

    invoke-virtual {p1}, Lcom/miui/home/settings/DeleteAppInfo;->getStatus()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_3

    .line 92
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isSystemSdkEnabled()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 94
    iget-object p0, p0, Lcom/miui/home/settings/DeleteAppAdapter$onBindViewHolder$1;->this$0:Lcom/miui/home/settings/DeleteAppAdapter;

    invoke-static {p0}, Lcom/miui/home/settings/DeleteAppAdapter;->access$getMContext$p(Lcom/miui/home/settings/DeleteAppAdapter;)Landroid/app/Activity;

    move-result-object p0

    const p1, 0x7f1004d4

    .line 93
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 97
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 100
    :cond_1
    iget-object p1, p0, Lcom/miui/home/settings/DeleteAppAdapter$onBindViewHolder$1;->$appInfo:Lcom/miui/home/settings/DeleteAppInfo;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/miui/home/settings/DeleteAppInfo;->setStatus(I)V

    .line 101
    iget-object p1, p0, Lcom/miui/home/settings/DeleteAppAdapter$onBindViewHolder$1;->this$0:Lcom/miui/home/settings/DeleteAppAdapter;

    iget v2, p0, Lcom/miui/home/settings/DeleteAppAdapter$onBindViewHolder$1;->$position:I

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 102
    iget-object p1, p0, Lcom/miui/home/settings/DeleteAppAdapter$onBindViewHolder$1;->$appInfo:Lcom/miui/home/settings/DeleteAppInfo;

    invoke-virtual {p1}, Lcom/miui/home/settings/DeleteAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/launcher/utils/UninstallAppPreInstallUtils;->getMiuiPreinstallAppPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 104
    iget-object v2, p0, Lcom/miui/home/settings/DeleteAppAdapter$onBindViewHolder$1;->$appInfo:Lcom/miui/home/settings/DeleteAppInfo;

    invoke-virtual {v2}, Lcom/miui/home/settings/DeleteAppInfo;->getFromType()Lcom/miui/home/settings/DeleteAppInfo$FromType;

    move-result-object v2

    sget-object v3, Lcom/miui/home/settings/DeleteAppInfo$FromType;->XML:Lcom/miui/home/settings/DeleteAppInfo$FromType;

    const-string v4, "appInfo.packageName"

    if-ne v2, v3, :cond_2

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/miui/home/settings/DeleteAppAdapter$onBindViewHolder$1;->this$0:Lcom/miui/home/settings/DeleteAppAdapter;

    invoke-static {v2}, Lcom/miui/home/settings/DeleteAppAdapter;->access$getDATA_MIUI_APP_DIR$p(Lcom/miui/home/settings/DeleteAppAdapter;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v0, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/miui/home/settings/DeleteAppAdapter$onBindViewHolder$1;->this$0:Lcom/miui/home/settings/DeleteAppAdapter;

    .line 106
    iget-object p0, p0, Lcom/miui/home/settings/DeleteAppAdapter$onBindViewHolder$1;->$appInfo:Lcom/miui/home/settings/DeleteAppInfo;

    invoke-virtual {p0}, Lcom/miui/home/settings/DeleteAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-static {v0, p0, p1}, Lcom/miui/home/settings/DeleteAppAdapter;->access$installAppByPackagePath(Lcom/miui/home/settings/DeleteAppAdapter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_2
    iget-object p1, p0, Lcom/miui/home/settings/DeleteAppAdapter$onBindViewHolder$1;->this$0:Lcom/miui/home/settings/DeleteAppAdapter;

    iget-object p0, p0, Lcom/miui/home/settings/DeleteAppAdapter$onBindViewHolder$1;->$appInfo:Lcom/miui/home/settings/DeleteAppInfo;

    invoke-virtual {p0}, Lcom/miui/home/settings/DeleteAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/miui/home/settings/DeleteAppAdapter;->access$installAppByPackageName(Lcom/miui/home/settings/DeleteAppAdapter;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
