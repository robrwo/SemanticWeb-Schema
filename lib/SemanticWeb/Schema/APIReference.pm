use utf8;

package SemanticWeb::Schema::APIReference;

# ABSTRACT: Reference documentation for application programming interfaces (APIs).

use Moo;

extends qw/ SemanticWeb::Schema::TechArticle /;


use MooX::JSON_LD 'APIReference';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v8.0.1';

=encoding utf8

=head1 DESCRIPTION

Reference documentation for application programming interfaces (APIs).




=head1 ATTRIBUTES


=head2 C<assembly>



Library file name e.g., mscorlib.dll, system.web.dll.


A assembly should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_assembly>

A predicate for the L</assembly> attribute.

=cut

has assembly => (
    is        => 'rw',
    predicate => '_has_assembly',
    json_ld   => 'assembly',
);


=head2 C<assembly_version>

C<assemblyVersion>

Associated product/technology version. e.g., .NET Framework 4.5.


A assembly_version should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_assembly_version>

A predicate for the L</assembly_version> attribute.

=cut

has assembly_version => (
    is        => 'rw',
    predicate => '_has_assembly_version',
    json_ld   => 'assemblyVersion',
);


=head2 C<executable_library_name>

C<executableLibraryName>

Library file name e.g., mscorlib.dll, system.web.dll.


A executable_library_name should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_executable_library_name>

A predicate for the L</executable_library_name> attribute.

=cut

has executable_library_name => (
    is        => 'rw',
    predicate => '_has_executable_library_name',
    json_ld   => 'executableLibraryName',
);


=head2 C<programming_model>

C<programmingModel>

Indicates whether API is managed or unmanaged.


A programming_model should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_programming_model>

A predicate for the L</programming_model> attribute.

=cut

has programming_model => (
    is        => 'rw',
    predicate => '_has_programming_model',
    json_ld   => 'programmingModel',
);


=head2 C<target_platform>

C<targetPlatform>

Type of app development: phone, Metro style, desktop, XBox, etc.


A target_platform should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_target_platform>

A predicate for the L</target_platform> attribute.

=cut

has target_platform => (
    is        => 'rw',
    predicate => '_has_target_platform',
    json_ld   => 'targetPlatform',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::TechArticle>

=cut

1;
