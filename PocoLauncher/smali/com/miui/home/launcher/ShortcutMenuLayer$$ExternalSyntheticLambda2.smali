.class public final synthetic Lcom/miui/home/launcher/ShortcutMenuLayer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/ShortcutMenuLayer;

.field public final synthetic f$1:Lcom/miui/home/launcher/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/ShortcutMenuLayer;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutMenuLayer$$ExternalSyntheticLambda2;->f$0:Lcom/miui/home/launcher/ShortcutMenuLayer;

    iput-object p2, p0, Lcom/miui/home/launcher/ShortcutMenuLayer$$ExternalSyntheticLambda2;->f$1:Lcom/miui/home/launcher/ItemInfo;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer$$ExternalSyntheticLambda2;->f$0:Lcom/miui/home/launcher/ShortcutMenuLayer;

    iget-object p0, p0, Lcom/miui/home/launcher/ShortcutMenuLayer$$ExternalSyntheticLambda2;->f$1:Lcom/miui/home/launcher/ItemInfo;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->$r8$lambda$HlgBxfeqMPoqI5EvVBGRreYDMw0(Lcom/miui/home/launcher/ShortcutMenuLayer;Lcom/miui/home/launcher/ItemInfo;Ljava/lang/Void;)Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;

    move-result-object p0

    return-object p0
.end method
