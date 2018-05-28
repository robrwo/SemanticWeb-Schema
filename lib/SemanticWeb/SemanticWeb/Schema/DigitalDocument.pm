package SemanticWeb::Schema::DigitalDocument;

# ABSTRACT: An electronic file or document.

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

An electronic file or document.




=head1 ATTRIBUTES


=head2 C<has_digital_document_permission>

C<hasDigitalDocumentPermission>

A permission related to the access to this document (e.g. permission to
read or write an electronic document). For a public document, specify a
grantee with an Audience with audienceType equal to "public".


A has_digital_document_permission should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DigitalDocumentPermission']>

=back

=cut

has has_digital_document_permission => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'DigitalDocument' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields, {
       'hasDigitalDocumentPermission' => $self->curry::_serializer('has_digital_document_permission'),
    } ]
};




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
