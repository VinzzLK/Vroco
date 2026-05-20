.class public final synthetic Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:I

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/List;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    iput p3, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager$$ExternalSyntheticLambda1;->f$2:I

    iput-wide p4, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager$$ExternalSyntheticLambda1;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    iget v2, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager$$ExternalSyntheticLambda1;->f$2:I

    iget-wide v3, p0, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager$$ExternalSyntheticLambda1;->f$3:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/home/launcher/commercial/preinstall/cn/CNFolderPreinstallManager;->$r8$lambda$JUVCXKYoqUU7Ao8LLxreYGOWCOY(Landroid/content/Context;Ljava/util/List;IJ)V

    return-void
.end method
