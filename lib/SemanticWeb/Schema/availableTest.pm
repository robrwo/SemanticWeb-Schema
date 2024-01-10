use utf8;

package SemanticWeb::Schema::availableTest;

# ABSTRACT: A diagnostic test or procedure offered by this lab.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'availableTest';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A diagnostic test or procedure offered by this lab.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
