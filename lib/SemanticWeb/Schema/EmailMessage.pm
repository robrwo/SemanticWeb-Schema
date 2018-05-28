package SemanticWeb::Schema::EmailMessage;

# ABSTRACT: An email message.

use Moo;

extends qw/ SemanticWeb::Schema::Message /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

An email message.




=cut


around json_ld_type => sub { return 'EmailMessage' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Message>

=cut

1;
