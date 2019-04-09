use utf8;

package SemanticWeb::Schema::DiagnosticLab;

# ABSTRACT: A medical laboratory that offers on-site or off-site diagnostic services.

use Moo;

extends qw/ SemanticWeb::Schema::MedicalOrganization /;


use MooX::JSON_LD 'DiagnosticLab';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.5.0';

=encoding utf8

=head1 DESCRIPTION

A medical laboratory that offers on-site or off-site diagnostic services.




=head1 ATTRIBUTES


=head2 C<available_test>

C<availableTest>

A diagnostic test or procedure offered by this lab.


A available_test should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalTest']>

=back

=cut

has available_test => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'availableTest',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalOrganization>

=cut

1;
