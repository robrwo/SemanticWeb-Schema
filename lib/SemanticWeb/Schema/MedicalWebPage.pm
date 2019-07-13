use utf8;

package SemanticWeb::Schema::MedicalWebPage;

# ABSTRACT: A web page that provides medical information.

use Moo;

extends qw/ SemanticWeb::Schema::WebPage /;


use MooX::JSON_LD 'MedicalWebPage';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.7.0';

=encoding utf8

=head1 DESCRIPTION

A web page that provides medical information.




=head1 ATTRIBUTES


=head2 C<aspect>



An aspect of medical practice that is considered on the page, such as
'diagnosis', 'treatment', 'causes', 'prognosis', 'etiology',
'epidemiology', etc.


A aspect should be one of the following types:

=over

=item C<Str>

=back

=cut

has aspect => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'aspect',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::WebPage>

=cut

1;
