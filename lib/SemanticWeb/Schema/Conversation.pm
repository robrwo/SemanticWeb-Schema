package SemanticWeb::Schema::Conversation;

# ABSTRACT: One or more messages between organizations or people on a particular topic

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

One or more messages between organizations or people on a particular topic.
Individual messages can be linked to the conversation with isPartOf or
hasPart properties.




=cut


around json_ld_type => sub { return 'Conversation' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
