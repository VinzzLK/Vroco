.class public Lcom/miui/home/launcher/install/AutoInstallsLayout$GadgetParser;
.super Ljava/lang/Object;
.source "AutoInstallsLayout.java"

# interfaces
.implements Lcom/miui/home/launcher/install/AutoInstallsLayout$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/install/AutoInstallsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "GadgetParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;


# direct methods
.method protected constructor <init>(Lcom/miui/home/launcher/install/AutoInstallsLayout;)V
    .locals 0

    .line 1073
    iput-object p1, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$GadgetParser;->this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;Landroid/content/ContentValues;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string p3, "gadgetName"

    .line 1076
    invoke-static {p1, p3}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$300(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1077
    invoke-static {p1, p2, p3}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$1200(Landroid/content/res/XmlResourceParser;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1079
    iget-object p0, p0, Lcom/miui/home/launcher/install/AutoInstallsLayout$GadgetParser;->this$0:Lcom/miui/home/launcher/install/AutoInstallsLayout;

    invoke-static {p0}, Lcom/miui/home/launcher/install/AutoInstallsLayout;->access$400(Lcom/miui/home/launcher/install/AutoInstallsLayout;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
