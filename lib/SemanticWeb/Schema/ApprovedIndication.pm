use utf8;

package SemanticWeb::Schema::ApprovedIndication;

# ABSTRACT: An indication for a medical therapy that has been formally specified or approved by a regulatory body that regulates use of the therapy; for example

use Moo;

extends qw/ SemanticWeb::Schema::MedicalIndication /;


use MooX::JSON_LD 'ApprovedIndication';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v9.0.1';

=encoding utf8

=head1 DESCRIPTION

An indication for a medical therapy that has been formally specified or
approved by a regulatory body that regulates use of the therapy; for
example, the US FDA approves indications for most drugs in the US.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalIndication>

=cut

1;
