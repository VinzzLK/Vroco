.class Lcom/miui/home/launcher/BaseProgressShortcutIcon$9;
.super Lcom/miui/home/library/mirror/MirrorMenuListener;
.source "BaseProgressShortcutIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/BaseProgressShortcutIcon;->getMirrorMenuListener()Lcom/miui/home/library/mirror/MirrorMenuListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/BaseProgressShortcutIcon;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/BaseProgressShortcutIcon;)V
    .locals 0

    .line 923
    iput-object p1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon$9;->this$0:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    invoke-direct {p0}, Lcom/miui/home/library/mirror/MirrorMenuListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMirrorMenuQuery(Landroid/view/View;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/mirror/MirrorMenu;",
            ">;"
        }
    .end annotation

    .line 926
    iget-object p1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon$9;->this$0:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz p1, :cond_0

    .line 927
    iget-object p0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon$9;->this$0:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 928
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 929
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const/high16 v2, 0x2000000

    invoke-static {v0, v1, p0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 930
    new-instance v0, Lcom/xiaomi/mirror/MirrorMenu$NewDisplayOpenBuilder;

    invoke-direct {v0}, Lcom/xiaomi/mirror/MirrorMenu$NewDisplayOpenBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/mirror/MirrorMenu$NewDisplayOpenBuilder;->setPendingIntent(Landroid/app/PendingIntent;)Lcom/xiaomi/mirror/MirrorMenu$NewDisplayOpenBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/mirror/MirrorMenu$NewDisplayOpenBuilder;->build()Lcom/xiaomi/mirror/MirrorMenu;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
