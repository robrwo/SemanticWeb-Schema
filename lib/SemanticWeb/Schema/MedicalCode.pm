use utf8;

package SemanticWeb::Schema::MedicalCode;

# ABSTRACT: A code for a medical entity.

use Moo;

extends qw/ SemanticWeb::Schema::CategoryCode SemanticWeb::Schema::MedicalIntangible /;


use MooX::JSON_LD 'MedicalCode';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.1';

=encoding utf8

=head1 DESCRIPTION

A code for a medical entity.




=head1 ATTRIBUTES


=head2 C<code_value>

C<codeValue>

A short textual code that uniquely identifies the value.


A code_value should be one of the following types:

=over

=item C<Str>

=back

=cut

has code_value => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'codeValue',
);


=head2 C<coding_system>

C<codingSystem>

The coding system, e.g. 'ICD-10'.


A coding_system should be one of the following types:

=over

=item C<Str>

=back

=cut

has coding_system => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'codingSystem',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalIntangible>

=cut

1;
