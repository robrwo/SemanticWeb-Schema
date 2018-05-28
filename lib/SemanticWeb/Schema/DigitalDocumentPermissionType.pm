package SemanticWeb::Schema::DigitalDocumentPermissionType;

# ABSTRACT: A type of permission which can be granted for accessing a digital document.

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A type of permission which can be granted for accessing a digital document.




=cut


around json_ld_type => sub { return 'DigitalDocumentPermissionType' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
