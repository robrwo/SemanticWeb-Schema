package SemanticWeb::Schema::AdministrativeArea;

# ABSTRACT: A geographical region

use Moo;

extends qw/ SemanticWeb::Schema::Place /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A geographical region, typically under the jurisdiction of a particular
government.




=cut


around json_ld_type => sub { return 'AdministrativeArea' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Place>

=cut

1;
