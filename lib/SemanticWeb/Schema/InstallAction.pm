package SemanticWeb::Schema::InstallAction;

# ABSTRACT: The act of installing an application.

use Moo;

extends qw/ SemanticWeb::Schema::ConsumeAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of installing an application.




=cut


around json_ld_type => sub { return 'InstallAction' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::ConsumeAction>

=cut

1;
