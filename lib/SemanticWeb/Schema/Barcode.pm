package SemanticWeb::Schema::Barcode;

# ABSTRACT: An image of a visual machine-readable code such as a barcode or QR code.

use Moo;

extends qw/ SemanticWeb::Schema::ImageObject /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

An image of a visual machine-readable code such as a barcode or QR code.




=cut


around json_ld_type => sub { return 'Barcode' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::ImageObject>

=cut

1;
