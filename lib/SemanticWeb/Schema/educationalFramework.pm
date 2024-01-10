use utf8;

package SemanticWeb::Schema::educationalFramework;

# ABSTRACT: The framework to which the resource being described is aligned.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'educationalFramework';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The framework to which the resource being described is aligned.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
