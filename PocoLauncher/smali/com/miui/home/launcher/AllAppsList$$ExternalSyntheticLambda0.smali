.class public final synthetic Lcom/miui/home/launcher/AllAppsList$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/AllAppsList;

.field public final synthetic f$1:Lcom/miui/home/launcher/AppInfo;

.field public final synthetic f$2:Landroid/content/pm/LauncherActivityInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/AllAppsList;Lcom/miui/home/launcher/AppInfo;Landroid/content/pm/LauncherActivityInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/AllAppsList$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/AllAppsList;

    iput-object p2, p0, Lcom/miui/home/launcher/AllAppsList$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/launcher/AppInfo;

    iput-object p3, p0, Lcom/miui/home/launcher/AllAppsList$$ExternalSyntheticLambda0;->f$2:Landroid/content/pm/LauncherActivityInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/AllAppsList$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/AllAppsList;

    iget-object v1, p0, Lcom/miui/home/launcher/AllAppsList$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/launcher/AppInfo;

    iget-object p0, p0, Lcom/miui/home/launcher/AllAppsList$$ExternalSyntheticLambda0;->f$2:Landroid/content/pm/LauncherActivityInfo;

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/AllAppsList;->$r8$lambda$ZGPZoucIJWuUho-tJeN8Hzbzx9c(Lcom/miui/home/launcher/AllAppsList;Lcom/miui/home/launcher/AppInfo;Landroid/content/pm/LauncherActivityInfo;)V

    return-void
.end method
