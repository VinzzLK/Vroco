.class public final synthetic Lcom/miui/home/launcher/BaseProgressShortcutIcon$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

.field public final synthetic f$1:Lcom/miui/home/launcher/ShortcutInfo;

.field public final synthetic f$2:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/BaseProgressShortcutIcon;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon$$ExternalSyntheticLambda5;->f$0:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    iput-object p2, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon$$ExternalSyntheticLambda5;->f$1:Lcom/miui/home/launcher/ShortcutInfo;

    iput-object p3, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon$$ExternalSyntheticLambda5;->f$2:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon$$ExternalSyntheticLambda5;->f$0:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    iget-object v1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon$$ExternalSyntheticLambda5;->f$1:Lcom/miui/home/launcher/ShortcutInfo;

    iget-object p0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon$$ExternalSyntheticLambda5;->f$2:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->$r8$lambda$89DHiHpocLh4qo7xMvz_8dJQ2J4(Lcom/miui/home/launcher/BaseProgressShortcutIcon;Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method
