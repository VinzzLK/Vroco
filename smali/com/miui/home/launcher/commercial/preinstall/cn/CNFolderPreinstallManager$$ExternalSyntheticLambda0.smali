.class public final synthetic Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager$$ExternalSyntheticLambda0;->f$1:Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;

    iput p3, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager$$ExternalSyntheticLambda0;->f$1:Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;

    iget p0, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->$r8$lambda$hPYqdLyW86LXZNlQu2Qz6ad9E10(Landroid/content/Context;Lcom/miui/msa/internal/preinstall/v2/FolderRecommendAdInfo;I)V

    return-void
.end method
