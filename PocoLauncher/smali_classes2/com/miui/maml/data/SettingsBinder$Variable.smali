.class Lcom/miui/maml/data/SettingsBinder$Variable;
.super Lcom/miui/maml/data/VariableBinder$Variable;
.source "SettingsBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/SettingsBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Variable"
.end annotation


# instance fields
.field public mCategory:Lcom/miui/maml/data/SettingsBinder$Category;

.field public mKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/maml/data/SettingsBinder;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/SettingsBinder;Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V
    .locals 1

    .line 35
    iput-object p1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->this$0:Lcom/miui/maml/data/SettingsBinder;

    .line 36
    invoke-direct {p0, p2, p3}, Lcom/miui/maml/data/VariableBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V

    const-string p1, "category"

    .line 37
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p3

    const/4 v0, -0x1

    sparse-switch p3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p3, "system"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string p3, "secure"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string p3, "global"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 49
    sget-object p1, Lcom/miui/maml/data/SettingsBinder$Category;->Secure:Lcom/miui/maml/data/SettingsBinder$Category;

    iput-object p1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mCategory:Lcom/miui/maml/data/SettingsBinder$Category;

    goto :goto_1

    .line 43
    :pswitch_0
    sget-object p1, Lcom/miui/maml/data/SettingsBinder$Category;->System:Lcom/miui/maml/data/SettingsBinder$Category;

    iput-object p1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mCategory:Lcom/miui/maml/data/SettingsBinder$Category;

    goto :goto_1

    .line 40
    :pswitch_1
    sget-object p1, Lcom/miui/maml/data/SettingsBinder$Category;->Secure:Lcom/miui/maml/data/SettingsBinder$Category;

    iput-object p1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mCategory:Lcom/miui/maml/data/SettingsBinder$Category;

    goto :goto_1

    .line 46
    :pswitch_2
    sget-object p1, Lcom/miui/maml/data/SettingsBinder$Category;->Global:Lcom/miui/maml/data/SettingsBinder$Category;

    iput-object p1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mCategory:Lcom/miui/maml/data/SettingsBinder$Category;

    :goto_1
    const-string p1, "key"

    .line 52
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4a16fc5d -> :sswitch_2
        -0x3604a489 -> :sswitch_1
        -0x34e38dd1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public query()V
    .locals 7

    .line 60
    sget-object v0, Lcom/miui/maml/data/SettingsBinder$1;->$SwitchMap$com$miui$maml$data$SettingsBinder$Category:[I

    iget-object v1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mCategory:Lcom/miui/maml/data/SettingsBinder$Category;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v0, v1, :cond_c

    if-eq v0, v6, :cond_6

    if-eq v0, v5, :cond_0

    goto/16 :goto_0

    .line 98
    :cond_0
    iget v0, p0, Lcom/miui/maml/data/VariableBinder$TypedValue;->mType:I

    if-eq v0, v6, :cond_4

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    goto/16 :goto_0

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->this$0:Lcom/miui/maml/data/SettingsBinder;

    invoke-static {v0}, Lcom/miui/maml/data/SettingsBinder;->access$000(Lcom/miui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    iget-wide v2, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    double-to-float v2, v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/VariableBinder$Variable;->set(D)V

    goto/16 :goto_0

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->this$0:Lcom/miui/maml/data/SettingsBinder;

    invoke-static {v0}, Lcom/miui/maml/data/SettingsBinder;->access$000(Lcom/miui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    iget-wide v2, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    double-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/VariableBinder$Variable;->set(D)V

    goto/16 :goto_0

    .line 108
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->this$0:Lcom/miui/maml/data/SettingsBinder;

    invoke-static {v0}, Lcom/miui/maml/data/SettingsBinder;->access$000(Lcom/miui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    iget-wide v2, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    double-to-int v2, v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/VariableBinder$Variable;->set(D)V

    goto/16 :goto_0

    .line 100
    :cond_4
    iget-object v0, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->this$0:Lcom/miui/maml/data/SettingsBinder;

    invoke-static {v0}, Lcom/miui/maml/data/SettingsBinder;->access$000(Lcom/miui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 101
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefStringValue:Ljava/lang/String;

    :cond_5
    invoke-virtual {p0, v0}, Lcom/miui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 80
    :cond_6
    iget v0, p0, Lcom/miui/maml/data/VariableBinder$TypedValue;->mType:I

    if-eq v0, v6, :cond_a

    if-eq v0, v5, :cond_9

    if-eq v0, v4, :cond_8

    if-eq v0, v3, :cond_7

    if-eq v0, v2, :cond_7

    goto/16 :goto_0

    .line 87
    :cond_7
    iget-object v0, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->this$0:Lcom/miui/maml/data/SettingsBinder;

    invoke-static {v0}, Lcom/miui/maml/data/SettingsBinder;->access$000(Lcom/miui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    iget-wide v2, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    double-to-float v2, v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/VariableBinder$Variable;->set(D)V

    goto/16 :goto_0

    .line 93
    :cond_8
    iget-object v0, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->this$0:Lcom/miui/maml/data/SettingsBinder;

    invoke-static {v0}, Lcom/miui/maml/data/SettingsBinder;->access$000(Lcom/miui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    iget-wide v2, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    double-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/VariableBinder$Variable;->set(D)V

    goto/16 :goto_0

    .line 90
    :cond_9
    iget-object v0, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->this$0:Lcom/miui/maml/data/SettingsBinder;

    invoke-static {v0}, Lcom/miui/maml/data/SettingsBinder;->access$000(Lcom/miui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    iget-wide v2, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    double-to-int v2, v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/VariableBinder$Variable;->set(D)V

    goto/16 :goto_0

    .line 82
    :cond_a
    iget-object v0, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->this$0:Lcom/miui/maml/data/SettingsBinder;

    invoke-static {v0}, Lcom/miui/maml/data/SettingsBinder;->access$000(Lcom/miui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    .line 83
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefStringValue:Ljava/lang/String;

    :cond_b
    invoke-virtual {p0, v0}, Lcom/miui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    :cond_c
    iget v0, p0, Lcom/miui/maml/data/VariableBinder$TypedValue;->mType:I

    if-eq v0, v6, :cond_10

    if-eq v0, v5, :cond_f

    if-eq v0, v4, :cond_e

    if-eq v0, v3, :cond_d

    if-eq v0, v2, :cond_d

    goto :goto_0

    .line 69
    :cond_d
    iget-object v0, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->this$0:Lcom/miui/maml/data/SettingsBinder;

    invoke-static {v0}, Lcom/miui/maml/data/SettingsBinder;->access$000(Lcom/miui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    iget-wide v2, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    double-to-float v2, v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/VariableBinder$Variable;->set(D)V

    goto :goto_0

    .line 75
    :cond_e
    iget-object v0, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->this$0:Lcom/miui/maml/data/SettingsBinder;

    invoke-static {v0}, Lcom/miui/maml/data/SettingsBinder;->access$000(Lcom/miui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    iget-wide v2, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    double-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/VariableBinder$Variable;->set(D)V

    goto :goto_0

    .line 72
    :cond_f
    iget-object v0, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->this$0:Lcom/miui/maml/data/SettingsBinder;

    invoke-static {v0}, Lcom/miui/maml/data/SettingsBinder;->access$000(Lcom/miui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    iget-wide v2, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    double-to-int v2, v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/VariableBinder$Variable;->set(D)V

    goto :goto_0

    .line 64
    :cond_10
    iget-object v0, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->this$0:Lcom/miui/maml/data/SettingsBinder;

    invoke-static {v0}, Lcom/miui/maml/data/SettingsBinder;->access$000(Lcom/miui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    .line 65
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder$Variable;->mDefStringValue:Ljava/lang/String;

    :cond_11
    invoke-virtual {p0, v0}, Lcom/miui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
